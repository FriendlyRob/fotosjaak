<form action = "index.php?content=register" method = "post">
	<table class='simple'>
		<tr>
			<td> voornaam: </td> 
		</tr> 
		<tr> 
			<td> <input type = "text" name = "firstname" /> </td>
		</tr>
		<tr> 
			<td> tussenvoegsel: </td> 
		</tr> 
		<tr> 
			<td> <input type = "text" name = "infix" /> </td>
		</tr>
		<tr> 
			<td> achternaam: </td> 
		</tr>
		<tr>
		<td> <input type = "text" name = "surname" /> </td> 
		</tr>
		<tr>
			<td> straat + huisnummer: </td>
		</tr>
		<tr>
			<td>
				<input type = "text" name = "street" required/>
				<input type = "number" name = "housenumber" min="0" max"18923" required/>
			</td>
		</tr>
		<tr>
			<td> woonplaats: </td>
		</tr>
		<tr>
			<td>
				<input type = "text" name = "address" />
			</td>
		</tr>
		<tr>
			<td> postcode: </td>
		</tr>
		<tr>
			<td>
				<input type = "text" name = "zipcode" />
			</td>
		</tr>
		<tr>
			<td> geboortedatum: </td>
		</tr>
		<tr>
			<td>
				<input type = "date" 
				name = "birthday" 
				min = "1887-01-01" 
				max = "<?php echo Date('y-m-d'); ?>"
				required />
			</td>
		</tr>
		<tr>
			<td> geslacht: </td>
		</tr>
		<tr>
			<td>
					<input type="radio" name="sex" value="male" required>Man<br>
					<input type="radio" name="sex" value="female"required>Vrouw
			</td>
		</tr>
		<tr>
			<td> burgerlijke staat: </td>
		</tr>
		<tr>
			<td>
					<input type="radio" name="marital_state" value="married" required>Getrouwd<br>
					<input type="radio" name="marital_state" value="single" required>Niet getrouwd
			</td>
		</tr>
		<tr>
			<td> Favoriete game genre: </td>
		</tr>
		<tr>
			<td>
					<select name="favo_genre">
						<option value='not_selected'>---</option>
						<option value='rpg'>rpg</option>
						<option value='adventure'>adventure</option>
						<option value='horror'>horror</option>
						<option value='shooter'>shooter</option>
						<option value='mmorpg'>mmorpg</option>
						<option value='casual'>casual</option>
						<option value='educational'>educational</option>
						<option value='sport'>sport</option>
						<option value='simulation'>simulation</option>
					</select>
			</td>
		</tr>
		<tr>
			<td> favouritegame: </td>
		</tr>
		<tr>
			<td>	
				<input type = "text" name = "favouritegame">
			</td>
		</tr>
		<tr>
			<td> email: </td>
		</tr>
		<tr>
			<td>	
				<input type = "email" name = "email">
			</td>
		</tr>
		<tr>
			<td> password: </td>
		</tr>
		<tr>
			<td>	
				<input type = "password" name = "password">
			</td>
		</tr>
		<tr>
			<td> <input type = "submit" name = "submit" value = "verstuur" /> </td>
		</tr>
	</table>
</form>