<?php
# Fill our vars and run on cli
# $ php -f db-connect-test.php

$dbname = 'test';
$dbuser = 'root';
$dbpass = 'root';
$dbhost = 'localhost:3306';

$link = mysqli_connect($dbhost, $dbuser, $dbpass) or die("Unable to Connect to '$dbhost'");
mysqli_select_db($link, $dbname) or die("Could not open the db '$dbname'");

$query = "SELECT * FROM posts";
$result = mysqli_query($link, $query);

if(mysqli_num_rows($result) > 0)
while($row = mysqli_fetch_object($result)){
    echo $row->text."<br>";
}
