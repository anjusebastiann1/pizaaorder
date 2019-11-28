<?php




include('session_m.php');

if(!isset($login_session)){
header('Location: managerlogin.php'); 
}




$cheks = implode("','", $_POST['checkbox']);
$sql = "UPDATE pizza SET `options` = 'ENABLE' WHERE id in ('$checks')";
$result = mysqli_query($conn,$sql) or die(mysqli_error($conn));

header('Location: delete_food_items.php');
$conn->close();


?>