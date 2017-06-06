<html>
  <head>
    <title>My friends Database</title>
    <style>
    	body{
			/*background-color:grey;*/
			/*height: auto;*/
			margin-left: 60px;
			margin-right: 60px;
			margin-top: 10px;
			margin-bottom: 10px;
		}
		#wrapper {
    		width: 100%;
    		border: 1px solid black;
    		background-color:white;
    		/*padding-top: 1px;
    		padding-bottom: 1px;
    		padding-right: 1px;
    		padding-bottom: 1px;*/
    		
		}
		#header {
			color: white;
			background: black;
			padding: 1em;
			text-align: center;
		}

		#footer {
			color: white;
			background: black;
			padding: 5px;
			text-align: center;
		}

    </style>
  </head>
  <body>
    <div id = "wrapper">
    	<div id = "header">
    		<h2>My friends Database</h2>
    	</div>
    	<div id = "content">
    		<cfoutput>#body#</cfoutput>
    	</div>
    	<div id = "footer">
    		<h3>Copyright 2017</h3>
    	</div>
    </div>
  </body>
</html>