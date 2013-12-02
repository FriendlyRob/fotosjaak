<?php
	require_once 'config/config.php';

	class MySqlDatabaseClass
	{
		// Fields
		private $db_connection;
		
		// Dit is de constructor van de MySqlDatabaseClass
		// Een constructor hercen je in PHP aan de naam. De naam is altijd
		// __construct
		public function __construct()
		{
			// Velden roep je aan met $this->naam_van_het_veld_zonder_$
			$this->db_connection = mysql_connect(SERVERNAME, 
												 USERNAME, 
												 PASSWORD);
			// Er wordt hier een database geselecteerd									 
			mysql_select_db(DATABASE, $this->db_connection) 
				or die('MySqlDatabaseClass, database niet geselecteerd');									 
		}
		
		// Deze functie krijgt als argument een query mee. Deze wordt door de mysql_query($query)
		public function fire_query($query)
		{
			$result = mysql_query($query) or die('MySqlDatabase: '.mysql_error());
			return $result;
		}	
	}
	
	// Maak nu een instantie van de net gedefineerde class.
	$database = new MySqlDatabaseClass();
?>


