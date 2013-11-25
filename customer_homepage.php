<?php 
	$userrole = array('customer', 'root', 'admin');
	include("security.php"); 
?>
<h3>Customer homepage</h3>
Welkom klant nummer  <?php echo $_SESSION['id']; ?> <br>
U bent ingelogt als een:  <?php echo $_SESSION['userrole']; ?>