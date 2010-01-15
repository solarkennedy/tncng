<?php

$username="hamdns";
$password="wApPfBWuNmzEYWNM";
$database="fcc_amateur";
mysql_connect(localhost,$username,$password);
mysql_select_db ($database);


$query=" SELECT * FROM en WHERE 1";
#$query=" SELECT * FROM en WHERE callsign='KJ4NIK'";
#$query=" SELECT * FROM en WHERE callsign='aa0a'";
$result=mysql_query($query);
$num=mysql_numrows($result);

$i=0;
while ($i < $num) {
	$callsign=strtolower(mysql_result($result,$i,"callsign"));
	$address1=ucwords(strtolower(mysql_result($result,$i,"address1")));
	$city=ucwords(strtolower(mysql_result($result,$i,"city")));
	$state=ucwords(strtolower(mysql_result($result,$i,"state")));
	$zip=mysql_result($result,$i,"zip");
	$email="$callsign.$callsign.ham";
	$fullname=ucwords(strtolower(mysql_result($result,$i,"full_name")));
	echo "Working with $callsign\n";
	mysql_query("DELETE FROM `dns_records` WHERE `zone` = '$callsign.ham' AND `host` = 'address';");
echo mysql_error(); 
	mysql_query("DELETE FROM `dns_records` WHERE `zone` = '$callsign.ham' AND `host` = 'name';");
echo mysql_error(); 

	$query1="INSERT INTO dns_records (zone,data,host,type,resp_person,primary_ns) VALUES ('$callsign.ham','$address1, $city, $state, $zip','address','txt','$email','$callsign.ham.')";
	$query2="INSERT INTO dns_records (zone,data,host,type,resp_person,primary_ns) VALUES ('$callsign.ham','$fullname','name','txt','$email','$callsign.ham.')";
	mysql_query($query1);
	mysql_query($query2);
echo mysql_error(); 
	++$i;
}



mysql_close();
?>
