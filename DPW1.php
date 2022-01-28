<?php
class animal{
	public $Jumlah_Kaki,$Bisa_Terbang;
	}

class Anjing extends animal
{
	function bersuara()
	{
		return "guk gukk";
	}
}

class Bebek extends animal
{
	function bersuara()
	{
		return "wek wekk";
	}
}
class Burung extends animal 
{
	function bersuara()
	{
		return "niippp";
	}
}
class Gajah extends animal 
{
	function bersuara()
	{
		return "kwakkk";
	}
}

//Anjing
$Helly = new Anjing;
$Helly->Jumlah_kaki = 4;
$Helly->Bisa_Terbang ="Tidak Bisa Terbang";

echo "Helly Adalah Anjing<br>";
echo "Punya Kaki Sebanyak : " .$Helly->Jumlah_kaki. " <br>";
echo $Helly->Bisa_Terbang. "<br>";
echo "Suaranya :" .$Helly->bersuara(). "<br>";
echo "<hr>"; 

//Bebek
$Fitri = new Bebek;
$Fitri->Jumlah_kaki = 2;
$Fitri->Bisa_Terbang = "Bisa Terbang";

echo "Fitri Adalah Bebek<br>";
echo "Punya Kaki Sebanyak : " .$Fitri->Jumlah_kaki. "<br>";
echo $Fitri->Bisa_Terbang. "<br>";
echo "Suaranya :" .$Fitri->bersuara(). "<br>";
echo "<hr>";

//Burung
$Desy = new Burung;
$Desy->Jumlah_kaki = 2;
$Desy->Bisa_Terbang = "Bisa Terbang";

echo "Desy Adalah Burung<br>";
echo "Punya Kaki Sebanyak : " .$Desy->Jumlah_kaki. " <br>";
echo $Desy->Bisa_Terbang. "<br>";
echo "Suaranya :" .$Desy->bersuara(). "<br>";
echo "<hr>";

//Gajah
$Sopi = new Gajah;
$Sopi->Jumlah_kaki = 4;
$Sopi->Bisa_Terbang ="Tidak Bisa Terbang";

echo "Sopi Adalah Gajah<br>";
echo "Punya Kaki Sebanyak : " .$Sopi->Jumlah_kaki. "<br>";
echo $Sopi->Bisa_Terbang. "<br>";
echo "Suaranya :" .$Sopi->bersuara(). "<br>";
echo "<hr>";
?>