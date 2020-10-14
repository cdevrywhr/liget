<?php

// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(' ' . $company_data->company_name . ' ');
$pdf->SetAuthor(' ' . $company_data->company_name . ' ');
$pdf->SetTitle('PRINT PERSETUJUAN KESELURUHAN');

// set header false
$pdf->setPrintHeader(false);

// set margins
$pdf->SetMargins(10, 10, 10);
$pdf->SetHeaderMargin(10);
$pdf->SetFooterMargin(10);

// set auto pagebreak
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set default font subsetting mode
$pdf->setFontSubsetting(true);

$pdf->SetFont('helvetica', '', 14, '', true);

$pdf->AddPage('L');

$html = '
<style>
body{
  font-size: 12px;
}
.header{
  font-size: 14px;
}
.content{
  font-size: 11px;
}
</style>
<body>

<h3 align="center">PRINT PERSETUJUAN KESELURUHAN</h3>

<p><hr/></p>

<table cellpadding="" border="1">
  <thead>
    <tr>
      <td style="width: 5%; text-align: center; font-weight: bold">No.</td>
      <td style="width: 20%; text-align: center; font-weight: bold">Tanggal Disetujui</td>
      <td style="width: 20%; text-align: center; font-weight: bold">Kode Persetujuan</td>
      <td style="width: 20%; text-align: center; font-weight: bold">Nama Pengusul</td>
      <td style="width: 20%; text-align: center; font-weight: bold">Nama Proposal</td>
    </tr>
  </thead>
  <tbody>
';

$no = 1;
foreach ($get_all as $data) {
  $html .= '
    <tr>
      <td style="width: 5%; text-align: center;">' . $no++ . '</td>
      <td style="width: 20%; text-align: left;">' . $data->created_at . '</td>
      <td style="width: 20%; text-align: left;">' . $data->kode_persetujuan . '</td>
      <td style="width: 20%; text-align: center;">' . $data->create_by . '</td>
      <td style="width: 30%; text-align: left;">' . $data->nama_proposal . '</td>
    </tr>
    ';
}

$html .= '</table></body>';

// Print text using writeHTMLCell()
$pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);

$pdf->Output('PRINT_PERSETUJUAN_KESELURUHAN.pdf', 'I');
