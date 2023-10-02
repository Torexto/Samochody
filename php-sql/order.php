<?php
$host = "localhost";
$db_user = "root";
$db_password = "";
$db_name = "samochody";

$connect = @new mysqli($host, $db_user, $db_password, $db_name);

$nadwozie = $_POST["nadwozie"];
$silnik = $_POST["silnik"];
$wyp = $_POST["wyp"];
$choinka = $_POST["choinka"];
$imie = $_POST["imie"];
$haslo = $_POST["haslo"];
$kluczyk = $_POST["kluczyk"];
$adres = $_POST["adres"];
$telefon = $_POST["telefon"];
$dzien = $_POST["dzien"];
$czas = $_POST["czas"];
$komentarz = $_POST["komentarz"];
$kolor = $_POST["kolor"];

$wyposazenie = "";
$choinkatosql = "";

for($i = 0; $i < sizeof($wyp) - 1; $i++)
{
    $wyposazenie = $wyposazenie.$wyp[$i].", ";
}

for($i = 0; $i < sizeof($choinka) - 1; $i++)
{
    $choinkatosql = $choinkatosql.$choinka[$i].", ";
}

$wyposazenie = $wyposazenie.$wyp[sizeof($wyp) - 1];
$choinkatosql = $choinkatosql.$choinka[sizeof($choinka) - 1];

print("INSERT INTO `zamowienia`(`id`, `nadwozie`, `silnik`, `wyp`, `choinka`, `imie`, `haslo`, `kluczyk`, `adres`, `telefon`, `dzien`, `czas`, `komentarz`, `kolor`) 
VALUES (NULL,'$nadwozie','$silnik','$wyposazenie','$choinkatosql','$imie','$haslo','$kluczyk','$adres','$telefon','$dzien','$czas','$komentarz','$kolor')");

if($query = @$connect->query(
    sprintf("INSERT INTO `zamowienia`(`id`, `nadwozie`, `silnik`, `wyp`, `choinka`, `imie`, `haslo`, `kluczyk`, `adres`, `telefon`, `dzien`, `czas`, `komentarz`, `kolor`) 
    VALUES (NULL,'$nadwozie','$silnik','$wyposazenie','$choinkatosql','$imie','$haslo','$kluczyk','$adres','$telefon','$dzien','$czas','$komentarz','$kolor')")));

// echo(sizeof($wyp));

    