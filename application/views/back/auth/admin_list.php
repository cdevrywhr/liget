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
                <div>
                    <div class="box-header">
                        <a href="<?= $add_admin ?>" class="btn btn-primary"><i class="fa fa-plus"></i> <?php echo $btn_add ?></a>

                    </div>

                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="table-responsive">
                        <table id="dataTable" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th style="text-align: center">No</th>
                                    <th style="text-align: center">Nama</th>
                                    <th style="text-align: center">Username</th>
                                    <th style="text-align: center">Email</th>
                                    <th style="text-align: center">No HP</th>
                                    <th style="text-align: center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $no = 1;
                                foreach ($get_all_admin as $admin) {
                                    // action
                                    $edit = '<a href="' . base_url('auth/update/' . $admin->id_admin) . '" class="btn btn-warning"><i class="fa fa-pencil"></i></a>';
                                    $delete = '<a href="' . base_url('auth/delete/' . $admin->id_admin) . '" onClick="return confirm(\'Are you sure?\');" class="btn btn-danger"><i class="fa fa-trash"></i></a>';
                                ?>
                                    <tr>
                                        <td style="text-align: center"><?php echo $no++ ?></td>
                                        <td style="text-align: left"><?php echo $admin->nama ?></td>
                                        <td style="text-align: center"><?php echo $admin->username ?></td>
                                        <td style="text-align: center"><?php echo $admin->email ?></td>
                                        <td style="text-align: center"><?php echo $admin->nohp ?></td>
                                        <td style="text-align: center"><?php echo $edit ?> <?php echo $delete ?></td>
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