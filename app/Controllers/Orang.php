<?php

namespace App\Controllers;

use App\Models\OrangModel;

class Orang extends BaseController
{

    protected $orangModel; // protected agar dapat dipakai di fungsi inheritancenya

    public function __construct()
    {
        $this->orangModel = new OrangModel();
    }

    public function index()
    {
        // untuk ngakalin nomor pada tabelnya yang tidak nambah karna pagination
        $currentPage = $this->request->getVar('page_orang') ? $this->request->getVar('page_orang') : 1;

        // cek apakah ada nama/alamat yang dicari (fitur search)
        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $orang = $this->orangModel->search($keyword);
        } elseif ($keyword == '') {
            $orang = $this->orangModel;
        }

        $data = [
            'title' => 'Daftar Orang',
            'orang' => $orang->paginate(6, 'orang'), // parameter pertama jumlah data paginatenya, parameter kedua hanya ada jika paginationnya tidak default(custom)
            'pager' => $this->orangModel->pager, // untuk link paginationnya
            'currentPage' => $currentPage
        ];

        return view('orang/index', $data);
    }
}
