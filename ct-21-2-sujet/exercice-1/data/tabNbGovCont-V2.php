<?php
$tabNbGovCont = array ( 'Asia' => array ( 'Republic' => 31, 'Monarchy' => 12, 'Other' => 6, ), 'Europe' => array ( 'Republic' => 29, 'Monarchy' => 10, 'Other' => 6, ), 'Africa' => array ( 'Republic' => 48, 'Monarchy' => 3, 'Other' => 5, ), 'Oceania' => array ( 'Republic' => 7, 'Monarchy' => 7, 'Other' => 14, ), 'North America' => array ( 'Republic' => 13, 'Monarchy' => 10, 'Other' => 14, ), 'Antarctica' => array ( 'Republic' => 0, 'Monarchy' => 0, 'Other' => 1, ), 'South America' => array ( 'Republic' => 12, 'Monarchy' => 0, 'Other' => 2, ), );

if(__FILE__ == $_SERVER["SCRIPT_FILENAME"]){
    echo "<pre>";
    print_r($tabNbGovCont);
    echo "</pre>";
}
?>