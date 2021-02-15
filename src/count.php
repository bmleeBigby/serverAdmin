<?php 
$conn = mysqli_connect("db", "trucorpAdmin", "trucorpAdmin", "Trucorp", 3306);

if($conn -> connect_errno){
	echo "Failed to connect to MySQL: ".$mysqli -> connect_error;
	exit();
}

echo("<h1>Count Pegawai</h1><br>");

$sql = "SELECT COUNT(id) as jumlah from users";
$result = $conn->query($sql);

if($result->num_rows > 0){
    while($row = $result->fetch_assoc()){
        echo($row['jumlah']."<br>");
    }
}

?>
