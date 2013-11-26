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
		
	}
?>