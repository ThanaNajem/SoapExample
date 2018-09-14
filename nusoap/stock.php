<?php
require_once('connection.php');
class Stock
{
    //get price of stock depend on it's symbol
    public function getStockPrice($symbol)
    {
        $connToDB = new Connection();
        $conn     = $connToDB->getConnection();
        $query    = "SELECT * FROM `stockprices` WHERE `stock_symbol` =  '$symbol'";
        $result   = mysqli_query($conn, $query);
        $row      = mysqli_fetch_assoc($result);
        
        return $row['stock_price'];
    }
}