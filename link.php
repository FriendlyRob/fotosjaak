<ul>
	<li>
		<a href = "index.php?content=homepage">home</a>
	</li>	
	<?php
		if (isset($_SESSION['userrole']))
		{
			echo "<li>
					<a href = 'index.php?content=logout'>uitloggen</a>
				  </li>";
			echo  "<li>
					<a href = 'index.php?content=nieuw'>nieuwe link</a>
				  </li>";
				 switch ($_SESSION['userrole'])
				 {
					case 'customer':
						echo "<li>
								<a href='index.php?content=downloadpage'>downloads</a>
							 </li>";
						echo "<li>
								<a href='index.php?content=customer_homepage'>user home</a>
							 </li>";
						echo "<li>
								<a href='index.php?content=faqpage'>FAQ</a>
							 </li>";
					break;
					case 'admin':
					
					break;
					case 'root':
					
					break;
				 }
		}	
		else
		{
			echo "	<li>
						<a href = 'index.php?content=login_form'>inloggen</a>
					</li>
					
					<li>
						<a href = 'index.php?content=register_form'>registratie</a>
					</li>";
		}
	?>
</ul>