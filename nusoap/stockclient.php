<?php
require_once('lib/nusoap.php');

//pass server xml data into client 

/*@TODO : Change this to the correct path in your local */
$c = new nusoap_client('http://localhost/nusoap/SoapExample/nusoap/stockserver.php');

//return stock price for fixed symbol of stock from xml that consisit from envelope, faults, child of database column
$stockprice = $c->call('getStockQuote', array(
    'symbol' => 'ABC'
));
//var_dump($stockprice); die();
echo "The stock price for 'ABC' is $stockprice.";
?>