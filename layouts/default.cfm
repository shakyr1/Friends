<!DOCTYPE html>
<html lang="en">
  <head>
    <title>My friends Database</title>
    <style>
    	body{
    		font-family: 'lucida grande' ,tahoma,verdana,arial,sans-serif;
    		background-color: #e9e9e9;
		}
		
		#container {
    		width: 1080px;
    		background-color: white;
    		margin: 0 auto;
    		padding: 5px;
    		border: 3px solid #dedede;  
    	}

		#header {
			color: white;
			background: grey;
			padding: 1em;
			text-align: center;
			border: 1px solid #E3E3E3;
		}

		#content {
			float: left;
    		width: 750px;
    		margin: 20px 0 20px 0;
    		padding: 10px;
		}

		#sidebar {
			float: right;
    		width: 250px;
    		height: 400px;
    		margin: 20px 10px 20px 10px;
    		padding: 10px;
    		border: 1px solid #E3E3E3;
    		text-align: center;
		}

		#footer {
			clear: both;
    		color: white;
    		size: 5px;
			background: grey;
			padding: 2px;
			/*text-align: center;*/
			border: 1px solid #E3E3E3;
		}

		#tbl_view{
			width: 600px;

		}



    </style>

    <meta charset="utf-8">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

  </head>
  <body>
    <div id = "container">
    	<div id = "header">
    		<h2>My friends Database</h2>
    	</div>
    	<div id = "content">
    		<cfoutput>#body#</cfoutput>
    	</div>
    	<div id = "sidebar">
    		<h3>Banner</h3>
    	</div>
    	<div id = "footer" class="container-fluid text-center">
    		<h3>All rights reserved</h3>
    	</div>
    </div>
  </body>
</html>