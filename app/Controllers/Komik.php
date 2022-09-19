<?php

namespace App\Controllers;

use App\Models\KomikModel;

class Komik extends BaseController
{

    protected $komikModel; // protected agar dapat dipakai di fungsi inheritancenya

    public function __construct()
    {
        $this->komikModel = new KomikModel();
    }

    public function index()
    {
        $data = [
            'title' => 'Daftar Komik',
            'komik' => $this->komikModel->getKomik() // ambil semua data pada model komikModel fungsi getKomik
        ];


        return view('komik/index', $data);
    }

    public function detail($slug)
    {
        $data = [
            'title' => 'Detail Komik',
            'komik' => $this->komikModel->getKomik($slug) // amnil 1 data berdasarkan slug
        ];

        // jika yang dicari tidak ada ditabel (input asal)
        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik ' . $slug . ' tidak ditemukan.');
        }

        return view('komik/detail', $data);
    }

    public function create()
    {
        // session(); // sudah ditaruh di BaseController.php (biar engga lupa)
        $data = [
            'title' => 'Form Tambah Data Komik',
            'validation' => \Config\Services::validation() // data validasi yang diambil dari session yang dikirim dari error input pada method save
        ];

        return view('komik/create', $data);
    }

    public function save()
    {
        // dd(parameternya) untuk debugging
        // dd($this->request->getVar());

        // validasi input
        if (!$this->validate([
            // 'judul' => 'required|is_unique[komik.judul]'  = cara 1. kalo mau defaultnya tanpa custom error info
            'judul' => [ // cara 2. dengan custom error info 
                'rules' => 'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => 'Kolom {field} tidak boleh kosong.',
                    'is_unique' => 'Judul komik sudah terdaftar!'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    // 'uploaded' => 'Pilih gambar sampul terlebih dahulu.',
                    'max_size' => 'Ukuran gambar terlalu besar.',
                    'is_image' => 'Yang Anda pilih bukan gambar.',
                    'mime_in' => 'Yang Anda pilih bukan gambar.'
                ]
            ]
        ])) { // jika tidak valid kembalikan ke form input
            // $validation = \Config\Services::validation(); // menangkap hasil validation

            // kembali ke form beserta kirimkan data input dan data validasinya dengan session (jangan lupa taruh juga di method formnya contoh : create, ada diatas)
            // return redirect()->to('/komik/create')->withInput()->with('validation', $validation);
            return redirect()->to('/komik/create')->withInput();  // tidak usah pakai validation Config dst dan withinput tidak apa karna sudah ada session
        }


        // ambil gambar
        $fileSampul = $this->request->getFile('sampul');
        // cek apakah tidak ada file sampul yang diupload
        if ($fileSampul->getError() == 4) {
            // jika tidak ada gunakan file default
            $namaSampul = 'default.png';
        } elseif ($fileSampul->getError() == false) {
            // dd($fileSampul);
            // generate nama random untuk nama file sampul
            $namaSampul = $fileSampul->getRandomName();
            // pindahkan file ke folder img pada folder public
            $fileSampul->move('img', $namaSampul);
        }


        $slug = url_title($this->request->getVar('judul'), '-', true); // (variabelnya, pemisahnya, lowercasenya)

        // save ke table
        $this->komikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data berhasil ditambahkan.');
        return redirect()->to('/komik');
    }

    public function delete($id)
    {

        // cari data gambar berdasarkan id
        $komik = $this->komikModel->find($id);
        // hapus gambar dari folder img pada folder public, kecuali jika nama gambar default.png
        if ($komik['sampul'] != 'default.png') {
            unlink('img/' . $komik['sampul']);
        }

        $this->komikModel->delete($id);
        session()->setFlashdata('pesan', 'Data berhasil dihapus.');
        return redirect()->to('/komik');
    }

    public function edit($slug)
    {
        $data = [
            'title' => 'Form Ubah Data Komik',
            'validation' => \Config\Services::validation(), // data validasi yang diambil dari session yang dikirim dari error input pada method save
            'komik' => $this->komikModel->getKomik($slug)
        ];

        return view('komik/edit', $data);
    }

    public function update($id)
    {

        // ambil slug yang lama
        $komikLama = $this->komikModel->getKomik($this->request->getVar('slug'));
        // cek apakah judul masih sama
        if ($komikLama['judul'] == $this->request->getVar('judul')) {
            // jika iya
            $rule_judul = 'required';
        } elseif ($komikLama['judul'] != $this->request->getVar('judul')) {
            // jika tidak
            $rule_judul = 'required|is_unique[komik.judul]';
        }

        // validasi input
        if (!$this->validate([
            // 'judul' => 'required|is_unique[komik.judul]'  = cara 1. kalo mau defaultnya tanpa custom error info
            'judul' => [ // cara 2. dengan custom error info 
                'rules' => $rule_judul,
                'errors' => [
                    'required' => 'Kolom {field} tidak boleh kosong.',
                    'is_unique' => 'Judul komik sudah terdaftar!'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    // 'uploaded' => 'Pilih gambar sampul terlebih dahulu.',
                    'max_size' => 'Ukuran gambar terlalu besar.',
                    'is_image' => 'Yang Anda pilih bukan gambar.',
                    'mime_in' => 'Yang Anda pilih bukan gambar.'
                ]
            ]
        ])) { // jika tidak valid kembalikan ke form input
            // $validation = \Config\Services::validation(); // menangkap hasil validation

            // kembali ke form beserta kirimkan data input dan data validasinya dengan session (jangan lupa taruh juga di method formnya contoh : create, ada diatas)
            // return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput()->with('validation', $validation);
            return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput();
        }


        // ambil file gambar
        $fileSampul = $this->request->getFile('sampul');
        // cek apakah gambar tetap sama
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getVar('sampulLama');
        } elseif ($fileSampul->getError() == false) {
            // generate nama random
            $namaSampul = $fileSampul->getRandomName();
            // pindahkan gambar
            $fileSampul->move('img', $namaSampul);
            // hapus file yang lama
            unlink('img/' . $this->request->getVar('sampulLama'));
        }


        $slug = url_title($this->request->getVar('judul'), '-', true); // (variabelnya, pemisahnya, lowercasenya)

        // save ke table
        $this->komikModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data berhasil diubah.');
        return redirect()->to('/komik');
    }
}
