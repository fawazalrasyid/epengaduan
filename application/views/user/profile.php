<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

	<div class="row">
		<div class="col-lg-8">
			<?= $this->session->flashdata('pesan'); ?>
		</div>
	</div>

	<div class="card mb-3 col-lg-12">
		<div class="row no-gutters">
			<div class="col-md-2">
				<img src="<?= base_url('assets/profile/' . $user['foto_profile']) ?>" class="card-img" alt="img user">
			</div>
			<div class="col-md-8">
				<div class="card-body">
					<h5 class="card-title">Nama : <?= $user['nama_petugas']; ?></h5>
					<p class="card-title">Username : <?= $user['username']; ?></p>
					<p class="card-text">Telp : <?= $user['telp'] ?></p>
					<p><button class="btn btn-success" onclick="alert('coming soon!')">Ganti Foto</button></p>
				</div>
			</div>
		</div>
	</div>

</div>
<!-- /.container-fluid