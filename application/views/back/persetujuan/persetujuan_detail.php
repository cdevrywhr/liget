<?php $this->load->view('back/template/meta'); ?>
<div class="wrapper">

  <?php $this->load->view('back/template/navbar'); ?>
  <?php $this->load->view('back/template/sidebar'); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1><?php echo $page_title ?>
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><?php echo $module ?></li>
        <li class="active"><?php echo $page_title ?></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="box box-primary">
        <div class="box-body">
          <?php if ($persetujuan->status == 1) {
            $status = "Disetujui";
          } else {
            $status = "Ditolak";
          }
          ?>

          <div class="form-group"><label>Tanggal Disetujui</label>
            <p><?= $persetujuan->create_at ?></p>
          </div>
          <div class="form-group"><label>Kode Persetujuan</label>
            <p><?= $persetujuan->kode_persetujuan ?></p>
          </div>
          <div class="form-group"><label>Nama Pengusul</label>
            <p><?= $persetujuan->name ?></p>
          </div>
          <div class="form-group"><label>Nama Proposal</label>
            <p><?= $persetujuan->nama_proposal ?></p>
          </div>
          <div class="form-group"><label>Nominal Disetujui</label>
            <p><?= $persetujuan->nominal_disetujui ?></p>
          </div>
          <div class="form-group"><label>Nominal Pengajuan</label>
            <p><?= $persetujuan->nominal_pengajuan ?></p>
          </div>
          <div class="form-group"><label>Tahun Anggaran</label>
            <p><?= $persetujuan->tahun_anggaran ?></p>
          </div>
          <div class="form-group"><label>Status</label>
            <p><?= $status ?></p>
          </div>
          <div class="form-group"><label>Keterangan</label>
            <p><?= $persetujuan->memo ?></p>
          </div>
          <p><a href="<?php echo base_url('persetujuan') ?>" class="btn btn-lg btn-info"> Kembali Ke Halaman Sebelumnya</a></p>
        </div>
      </div>
      <!-- /.box -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <?php $this->load->view('back/template/footer'); ?>

</div>
<!-- ./wrapper -->

</body>

</html>