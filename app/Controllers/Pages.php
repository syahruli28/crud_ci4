<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'home'
        ];
        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'about'
        ];
        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe' => 'rumah',
                    'alamat' => 'Jl. abc No 23',
                    'kota' => 'Bekasi'
                ],
                [
                    'tipe' => 'kantor',
                    'alamat' => 'Jl. cba No 32',
                    'kota' => 'Bekasi'
                ]
            ]
        ];
        return view('pages/contact', $data);
    }
}
