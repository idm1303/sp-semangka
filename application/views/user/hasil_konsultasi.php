<!-- start banner Area -->
<section class="banner-area relative" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								<?= $title; ?>
							</h1>	
							<!-- <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="elements.html"> Elements</a></p> -->
						</div>											
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

            <!-- Start Consult Result -->
                <section class="sample-text-area">
                    <div class="container">
						<h3 class="text-heading">Hasil Konsultasi</h3>
						<nav>
							<h4>Gejala Yang Dipilih :</h4>
							<br>
							<?php $no=1; foreach ($data_cf['gejala'] as $row) { ?>
								<ol><?= $no++.". ".$row; ?></ol>
							<?php } ?>

							<br>
							<h4>Kemungkinan Penyakit / Hama :</h4>
							<br>
							<?php $no=1; foreach ($data_cf['list_penyakit'] as $row) { ?>
								<ol><?= $no++.". ".$row['nama_penyakit']; ?></ol>
							<?php } ?>
								<br><br>
							<table>
								<tr>
									<th>Hasil Dempster Shafer</th>
									<th>Hasil Certainty Factor</th>
								</tr>
								<tr>
									<td width=310px>
										<?php 
											if( $this->session->flashdata('gagal') ) {
												echo '<div class="alert-wrap2 shadow-reset wrap-alert-b">';
												echo    '<div class="alert alert-danger">';
												// echo        '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
												echo        "<strong>Proses gagal! </strong>".$this->session->flashdata('gagal')."</div></div>";
											} else {
												$this->Konsultasi_model->proses();
											}
										?>
									</td>
									<td width=310px>
										<?php $this->Konsultasi_model->prosesCF(); ?>
									</td>
								</tr>
							</table>
							
							<br>
							<h5>Nilai tertinggi dari perhitungan Kedua Metode adalah <?= $rank_penyakit; ?>, dengan nilai = <?= $rank_nilai; ?></h5><br><br>

							<h4>Keterangan :</h4><br>
							<p>
								<?= $data_cf['ket'][0]['ket']; ?>
							</p>
							
							<br>

							<h4>Solusi :</h4><br>
							<p>
								<?= $data_cf['ket'][0]['solusi']; ?>
							</p>
						<br>
						<a href="<?= base_url('konsultasi') ?>" class="genric-btn warning"">Ulangi Konsultasi</a>
						<a href="<?= base_url('konsultasi/cetak/') ?>?id=<?= $this->session->userdata('id_user') ?>" class="genric-btn primary" target="_blank">Print Hasil Konsultasi</a>
					</div>
                </section>

            <!-- End Consult Result -->


			