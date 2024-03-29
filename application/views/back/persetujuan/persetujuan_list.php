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
      <?php if ($this->session->flashdata('message')) {
        echo $this->session->flashdata('message');
      } ?>



      <div class="box box-primary">
        <div class="box-header"><a href="<?php echo $add_action ?>" class="btn btn-primary"><i class="fa fa-plus"></i> <?php echo $btn_add ?></a> </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="table-responsive">
            <table id="dataTable" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th style="text-align: center">No</th>
                  <th style="text-align: center">Kode Persetujuan</th>
                  <th style="text-align: center">Nama Pengusul</th>
                  <th style="text-align: center">Nama Proposal</th>
                  <th style="text-align: center">Tahun Anggaran</th>
                  <th style="text-align: center">Nominal Disetujui</th>
                  <th style="text-align: center">Status</th>
                  <th style="text-align: center">Keterangan Status</th>
                  <th style="text-align: center">Action</th>
                </tr>
              </thead>
              <tbody>
                <?php $no = 1;
                foreach ($get_all as $data) {
                  if ($data->status == 1) {
                    $status = "<button class='btn btn-xs btn-success' data-toggle='modal' data-target='#exampleModal'>Diterima</button> ";
                  } else {
                    $status = "<button class='btn btn-xs btn-danger' data-toggle='modal' data-target='#exampleModal'><i class='fa fa-remove'></i> diTolak</button>";
                  }
                  // action
                  $edit = '<a href="' . base_url('persetujuan/update/' . $data->id_persetujuan) . '" class="btn btn-warning"><i class="fa fa-pencil"></i></a>';
                  $delete = '<a href="' . base_url('persetujuan/delete/' . $data->id_persetujuan) . '" onClick="return confirm(\'Apakah Anda Yakin?\');" class="btn btn-danger"><i class="fa fa-trash"></i></a>';
                ?>
          </div>
          <tr>
            <td style="text-align: center"><?= $no++ ?></td>
            <td style="text-align: left"><?= $data->kode_persetujuan ?></td>
            <td style="text-align: left"><?= $data->create_by ?></td>
            <td style="text-align: left"><?= $data->nama_proposal ?></td>
            <td style="text-align: left"><?= $data->tahun_anggaran ?></td>
            <td style="text-align: left"><?= $data->nominal_disetujui ?></td>
            <td style="text-align: center"><a href="<?php echo base_url('persetujuan/detail/' . $data->id_persetujuan) ?>"><?= $status ?></a></td>
            <td style="text-align: left"><?= $data->memo ?></td>
            <td style="text-align: center"><?= $edit ?> <?= $delete ?></td>
          </tr>
        <?php } ?>
        </tbody>
        </table>
        </div>
      </div>
      <!-- /.box-body -->
  </div>
  <!-- /.box -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php $this->load->view('back/template/footer'); ?>
<!-- DataTables -->
<link rel="stylesheet" href="<?php echo base_url('assets/plugins/') ?>datatables-bs/css/dataTables.bootstrap.min.css">
<script src="<?php echo base_url('assets/plugins/') ?>datatables/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url('assets/plugins/') ?>datatables-bs/js/dataTables.bootstrap.min.js"></script>
<script>
  $(document).ready(function() {
    $('#dataTable').DataTable();
  });
</script>

</div>
<!-- ./wrapper -->

</body>

</html>