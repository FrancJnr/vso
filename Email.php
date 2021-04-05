<?php
  require_once('swiftmailer/swift_required.php');

/**
 * TechSavannaHRM is a comprehensive Human Resource Management (HRM) System that captures
 * all the essential functionalities required for any enterprise.
 * Copyright (C) 2006 TechSavannaHRM Inc., http://www.techsavanna.technology
 *
 * TechSavannaHRM is free software; you can redistribute it and/or modify it under the terms of
 * the GNU General Public License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * TechSavannaHRM is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with this program;
 * if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA  02110-1301, USA
 *
 */
class Email {

  


public function getMailer(){
      $mailer = new Swift_Mailer(new Swift_MailTransport());
      return  $mailer;
}

    protected function emailSlip($data) {
        $message = Swift_Message::newInstance()
                ->setFrom('charles@grooveawards.co.ke')
              // ->setTo("krufed@gmail.com")
                ->setTo($data["toemail"])
                ->setSubject($data["subject"])
                ->setBody($data["body"], 'text/html');
     
        $this->getMailer()->send($message);
    }
    
    
    function pdfEncrypt ($origFile, $password, $destFile){
//include the FPDI protection http://www.setasign.de/products/pdf-php-solutions/fpdi-protection-128/
require_once('fpdi/FPDI_Protection.php');

$pdf =& new FPDI_Protection();
// set the format of the destinaton file, in our case 6×9 inch
$pdf->FPDF('P', 'in', array('8.27','11.69'));

//calculate the number of pages from the original document
$pagecount = $pdf->setSourceFile($origFile);

// copy all pages from the old unprotected pdf in the new one
for ($loop = 1; $loop <= $pagecount; $loop++) {
$tplidx = $pdf->importPage($loop);
$pdf->addPage();
$pdf->useTemplate($tplidx);
}

// protect the new pdf file, and allow no printing, copy etc and leave only reading allowed
$pdf->SetProtection(array(), $password,$password);
$pdf->Output($destFile, 'F');

return $destFile;
}






}
