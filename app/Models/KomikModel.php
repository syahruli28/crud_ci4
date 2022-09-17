<?php

namespace App\Models;

use CodeIgniter\Model;

class KomikModel extends Model
{
    protected $table = 'komik'; // sesuai nama tabelnya
    protected $useStampstamps = true;

    // apa saja field yang boleh diinput user
    protected $allowedFields = ['judul', 'slug', 'penulis', 'penerbit', 'sampul'];

    public function getKomik($slug = false)
    {
        if ($slug == false) { // kalau tidak ada nilai slug, ambil semua data
            return $this->findAll();
        }

        // jika ada nilai slug ambil hanya 1 data
        return $this->where(['slug' => $slug])->first(); // untuk mengambil 1 data berdasarkan kondisi
    }
}
