`=<?php
include __DIR__ . '/koneksi.php';

$judul = 'Dashboard';
include BASE_PATH . '/layout/header.php';

$jml_siswa = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT COUNT(*) AS total FROM datasiswa"))['total'];
$jml_guru  = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT COUNT(*) AS total FROM dataguru"))['total'];
?>

<h2>Dashboard</h2>

<p>Selamat datang di aplikasi pengelolaan data sekolah.</p>
<br>

<div style="display: flex; gap: 20px; flex-wrap: wrap;">
    <div style="flex: 1; min-width: 200px; background: #3498db; color: #fff; padding: 20px; border-radius: 6px;">
        <h3 style="margin-bottom: 5px;"><?= $jml_siswa; ?></h3>
        <p>Data Siswa</p>
        <br>
        <a class="btn" href="<?= BASE_URL; ?>/siswa/tampil.php" style="background:#fff; color:#3498db;">Lihat</a>
    </div>
    <div style="flex: 1; min-width: 200px; background: #e67e22; color: #fff; padding: 20px; border-radius: 6px;">
        <h3 style="margin-bottom: 5px;"><?= $jml_guru; ?></h3>
        <p>Data Guru</p>
        <br>
        <a class="btn" href="<?= BASE_URL; ?>/guru/tampil.php" style="background:#fff; color:#e67e22;">Lihat</a>
    </div>
</div>

<?php include BASE_PATH . '/layout/footer.php'; ?>