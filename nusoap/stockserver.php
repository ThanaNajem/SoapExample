<?php
require_once('stock.php');

function getStockQuote($symbol)
{
	$conn = new Stock();
	$getStockPrice = $conn->getStockPrice($symbol);
	return $getStockPrice;
}

require('lib/nusoap.php');
//create a new soap serverfrom class nusoap_server in nusoap function
$server = new nusoap_server();
// it was called to provide the name and the namespace of the service which means configure our WSDL
$server->configureWSDL('stockserver', 'urn:stockquote');
// register the class method and the params of the method such as it's input and output data type and name
$server->register("getStockQuote", array(
    'symbol' => 'xsd:string'
), array(
    'return' => 'xsd:decimal'
), 'urn:stockquote', 'urn:stockquote#getStockQuote');

//get post value in php version 7 it was written as below, means Get our posted data if the service is being consumed
$result = file_get_contents('php://input');


// pass our posted data (or nothing) to the soap service 
$server->service($result);
?>