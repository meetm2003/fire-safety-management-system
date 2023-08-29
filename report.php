<?php
require('fpdf.php');

// Create a PDF object
$pdf = new FPDF();

// Add a page to the PDF
$pdf->AddPage();

// Set font properties
$pdf->SetFont('Arial', 'B', 16);

// Set background color for the header row
$pdf->SetFillColor(217, 225, 242);

// Set text color
$pdf->SetTextColor(0, 0, 0);

// Set cell margins
$pdf->SetMargins(10, 10, 10);

// Set auto page break
$pdf->SetAutoPageBreak(true, 10);

// Set header content
$pdf->Cell(0, 10, 'Fire Safety', 0, 1, 'C', true);

// Set logo image (if available)
// $pdf->Image('logo.png', 10, 20, 30, 30);

// Start capturing output
ob_start();

// Include the PHP file
include('view1.php');

// Get the captured content
$content = ob_get_clean();

// Parse the captured content as HTML and output as PDF
$pdf->WriteHTML($content);

// Output the PDF
$pdf->Output('generated_pdf.pdf', 'I');
?>
