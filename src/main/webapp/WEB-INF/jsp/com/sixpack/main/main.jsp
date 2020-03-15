<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>SIXPACK - Login</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Log in</div>
				<div class="panel-body">
					<form role="form" action="login.do" method="POST">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="Id" name="userId" type="text" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password" name="userPw" type="password" value="">
							</div>
							<div class="checkbox">
								<label>
									<input name="rememberInfo" type="checkbox" value="Y">Remember ID
								</label>
							</div>
							
						 	<button type="submit" id="btnLogin" class="btn btn-primary" style="width:100%;" >Login</button> 
						<!-- <a href="empList.do" class="btn btn-primary">Login</a> 민슬기사랑해 --> </fieldset>
						
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
	

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
