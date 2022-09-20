<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;

class OrangSeeder extends Seeder
{
    public function run()
    {
        // inisiasi fakerphp
        $faker = \Faker\Factory::create('id_ID');

        for ($i = 0; $i < 100; $i++) { // perulangan untuk seeding 100 data
            $data = [
                'nama' => $faker->name(),
                'alamat'    => $faker->address(),
                'created_at' => $faker->dateTime()->format('Y-m-d H:i:s'), // dari timestamp ke datetime
                'updated_at' => Time::now()
            ];

            // Simple Queries
            // $this->db->query('INSERT INTO users (username, email) VALUES(:username:, :email:)', $data);

            // Using Query Builder
            $this->db->table('orang')->insert($data); //untuk input satu data
            // $this->db->table('orang')->insertBatch($data); //untuk input banyak data
        }
    }
}
