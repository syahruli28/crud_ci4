<?php

namespace App\Models;

use CodeIgniter\Model;

class OrangModel extends Model
{
    protected $table = 'orang'; // sesuai nama tabelnya
    protected $useStampstamps = true;

    // apa saja field yang boleh diinput user
    protected $allowedFields = ['nama', 'alamat'];

    public function search($keyword)
    {
        return $this->table('orang')->like('nama', $keyword)->orLike('alamat', $keyword);
    }
}
