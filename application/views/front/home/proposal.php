<?php $this->load->view('front/templete/head'); ?>
<div id="page-content">
    <div class="block" id="berita">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="home">Home</a></li>
                <li><a href="proposal">Proposal</a></li>
                <li class="active">All Proposal</li>
            </ol>
            <!-- <meta http-equiv="refresh" content="100;"> -->
            <section>
                <div class="form search-form">
                    <div class="">
                        <h2>All Proposal
                            <a href="<?= base_url('proposal') ?>" class="btn btn-info btn-sm pull-right"><span class="fa fa-book"></span> Proposal Saya</a>
                            <a href="<?= base_url('proposal/create') ?>" class="btn btn-primary btn-sm pull-right"><span class="fa fa-plus"></span> Create Proposal</a>
                        </h2>
                        <hr style="margin-top: 0;">
                        <form action="search" method="GET">
                            <div class="row">
                                <div class="col-md-4 col-sm-4">
                                    <div class="form-group">
                                        <input type="text" name="judul" placeholder="Judul Proposal" value="" id="input" onkeyup="myFunction()">
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-4">
                                    <?php echo form_dropdown('', $get_all_combobox_jenis, '', $jenis_id) ?>
                                </div>
                                <div class="col-md-2 col-sm-4">
                                    <div class="form-group">
                                        <select class="form-control tahun" name="tahun">
                                            <option>Tahun Anggaran</option>
                                            <option value="2019">2019</option>
                                            <option value="2020">2020</option>
                                            <option value="2021">2021</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-2 col-sm-4">
                                    <?php echo form_dropdown('', $get_all_combobox_pd, '', $pd_id) ?>
                                </div>
                                <div class="col-md-2 col-sm-4">
                                    <div class="form-group">
                                        <select class="form-control current_stat" name="current_stat">
                                            <option value="">Status</option>
                                            <option value="0">Sedang Diproses</option>
                                            <option value="1">Diterima</option>
                                            <option value="2">Ditolak</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </section>

            <div class="row per-row">
                <div class="table-responsive">
                    <table id="dataTable" class="table table-striped">
                        <thead>
                            <tr>
                                <th style="text-align: center">No</th>
                                <th style="text-align: center">Tanggal</th>
                                <th style="text-align: center">Kode Proposal</th>
                                <th style="text-align: center">Nama Proposal</th>
                                <th style="text-align: center">PD Tujuan</th>
                                <th style="text-align: center">Jenis</th>
                                <th style="text-align: center">Pengusul</th>
                                <th style="text-align: center">Status</th>
                                <th style="text-align: center">File</th>
                                <?php if (is_member() or is_superadmin()) : ?>
                                    <th style="text-align: center">Action</th>
                                <?php endif; ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1;
                            foreach ($get_all as $data) {
                                if ($data->is_available == 0) {
                                    $is_available = "<button class='btn btn-xs' data-toggle='modal' data-target='#exampleModal'>Sedang diproses</button> ";
                                } else if ($data->is_available == 1) {
                                    $is_available = "<button class='btn btn-xs btn-success' data-toggle='modal' data-target='#exampleModal'><i class='fa fa-check'></i> DiSetujui</button>";
                                } else {
                                    $is_available = "<button class='btn btn-xs btn-danger' data-toggle='modal' data-target='#exampleModal'><i class='fa fa-remove'></i> diTolak</button>";
                                }
                                // action
                                $edit = '<a href="' . base_url('proposal/update/' . $data->id_proposal) . '" class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i></a>';
                                $delete = '<a href="' . base_url('proposal/delete/' . $data->id_proposal) . '" onClick="return confirm(\'Apakah Anda Yakin?\');" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>';
                            ?>
                                <tr>
                                    <td style="text-align: center"><?php echo $no++ ?></td>
                                    <td style="text-align: center"><?php echo $data->create_at ?></td>
                                    <td style="text-align: left"><?php echo $data->kode_proposal ?></td>
                                    <td style="text-align: center"><?php echo $data->nama_proposal ?></td>
                                    <td style="text-align: center"><?php echo $data->pd_name ?></td>
                                    <td style="text-align: center"><?php echo $data->jenis_proposal ?></td>
                                    <td style="text-align: center"><?php echo $data->create_by ?></td>
                                    <td style="text-align: center"><a href="<?php base_url('proposal/detail/' . $data->id_proposal) ?>"><?= $is_available ?></a></td>

                                    <?php if (is_superadmin() or is_admin()) : ?>
                                        <td style="text-align: center"><a href="<?php echo base_url('assets/file_proposal/' . $data->file_proposal) ?>" class="btn btn-xs btn-info"> DOWNLOAD</a></td>
                                    <?php endif; ?>
                                    <?php if (is_superadmin()) : ?>
                                        <td style="text-align: center">
                                            <?php echo $edit ?>
                                            <?php echo $delete ?>
                                        </td>
                                    <?php endif; ?>
                                    <?php if (is_member()) : ?>
                                        <td style="text-align: center">
                                            <?php echo $edit ?>
                                        </td>
                                    <?php endif ?>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $this->load->view('front/templete/foot'); ?>