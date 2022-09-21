<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">

    <div class="row">
        <div class="col-sm-6">
            <h1 class="mt-2">Daftar Orang</h1>
            <form action="" method="post">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Masukan nama/alamat..." name="keyword">
                    <button class="btn btn-outline-secondary" type="button" name="submit">Cari</button>
                </div>
            </form>
        </div>
    </div>

    <div class="row">
        <div class="col">

            <table class="table align-middle">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Alamat</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1 + (6 * ($currentPage - 1)); ?>
                    <!-- untuk penomoran pada tabelnya agar sesuai setiap paginationnya -->
                    <?php foreach ($orang as $o) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $o['nama']; ?></td>
                            <td><?= $o['alamat']; ?></td>
                            <td>
                                <a href="#" class="btn btn-success">Detail</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>

                    <?php if (count($orang) < 1) : ?>
                        <tr>
                            <td colspan="3">
                                <div class="alert alert-success" role="alert">
                                    Tidak ditemukan hasil pencarian..
                                </div>
                            </td>
                        </tr>
                    <?php endif; ?>

                </tbody>
            </table>

            <?= $pager->links('orang', 'orang_pagination') ?>
            <!-- parameter pertaman nama tabelnya, parameter kedua nama paginationnya -->
            <!-- untuk custom file pagination ada di folder : Config/Pagers -->

        </div>
    </div>
</div>
<?= $this->endSection(); ?>