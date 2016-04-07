<html>

<head>
	<script src = "scripts/jquery-2.1.3.js"> </script>
	<script>
	$.get("rest/user", function(data){
			var rowTemplate = $("#templates table").html();
			console.log(rowTemplate);
			for(index in data){
				var row = rowTemplate.replace("Name",data[index].name)
							.replace("emailId",data[index].emailId)
							.replace("password",data[index].password)
							.replace("joinDate",data[index].joinDate)
							.replace("age",data[index].age);
				$("#Userdata").append(row);
			}
		});


	</script>
</head>

<body>
	<div id="templates" style="display: none;">
		<table>
			<tr><td>Name</td><td>emailId</td><td>password</td><td>joinDate</td><td>age</td></tr>
		</table>
	</div>
	
	<table id="Userdata">
		<tr><td>Name</td><td>emailId</td><td>password</td><td>joinDate</td><td>age</td></tr>
	</table>

</body>
</html>
