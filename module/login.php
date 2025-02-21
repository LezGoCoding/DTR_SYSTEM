<?php
require_once("../include/initialize.php");
global $mydb;

check_message();

if (isset($_SESSION['ACCOUNT_ID'])) {
	header("Location: ../index.php");
	exit();
} else { ?>

<?php
$success_message = "";
$error_message = "";

$query = "SELECT * FROM loginattemp WHERE IPADDRESS = :ipaddress";
$mydb->setQuery($query, [
    ':ipaddress' => $_SERVER['REMOTE_ADDR'],
]);
$single_res = $mydb->loadSingleResult();

 $displayWarning = 'style="display:none;"'; // Default to hidden
      if ($single_res && isset($single_res->ATTEMPCOUNT)) {
        if ($single_res->ATTEMPCOUNT >= 2) {
            $displayWarning = '';
     }
}
if (isset($_POST['btnLogin'])) {
   $email = htmlspecialchars(trim($_POST['username']));
   $upass = htmlspecialchars(trim($_POST['userpass']));
   $h_upass = $upass;

   // Check if either the email or password fields are empty
   if ($email == '' or $upass == '') {
      message("Invalid Username and Password!", "error");
      redirect("login.php");
   } else {
      $user = new User();

      // Authenticate the user
      $res = $user::AuthenticateUser($email, $h_upass);

      if ($res == true) {
            // Session variables
            $_SESSION['last_activity'] = time();
			$_SESSION['ACCOUNT_ID']       = $_SESSION['ACCOUNT_ID'];
			$_SESSION['ACCOUNT_NAME']     = $_SESSION['ACCOUNT_NAME'] ;
			$_SESSION['ACCOUNT_USERNAME'] = $_SESSION['ACCOUNT_USERNAME'];
			$_SESSION['EMPID']     = $_SESSION['EMPID'];
			$_SESSION['ip']          =    $_SERVER['REMOTE_ADDR'];
			$_SESSION['userAgent']   = $_SERVER['HTTP_USER_AGENT'];

			$query = "UPDATE `loginattemp` SET ATTEMPCOUNT = 0 WHERE IPADDRESS = :ipaddress";
            $istrue = $mydb->InsertThis($query, [
              ':ipaddress' => $_SERVER['REMOTE_ADDR'],
            ]);

            DoRecordLogs('Login to the system.', 'LOGIN');
            $success_message = "Login Successfull!";
            redirect(WEB_ROOT.'index.php');

      } else {
         if (!isset($_SESSION['accesscount'])) {
            $_SESSION['accesscount'] = 0;
         }
         $_SESSION['accesscount']++;
           $ipAddress = $_SERVER['REMOTE_ADDR'];
          $query = "SELECT * FROM loginattemp WHERE IPADDRESS = :ipaddress";
          $mydb->setQuery($query, [
              ':ipaddress' => $ipAddress,
          ]);
          $rowcheck = $mydb->num_rows();

          if ($rowcheck > 0) {
              $updateQuery = "UPDATE `loginattemp` SET `ATTEMPCOUNT` = `ATTEMPCOUNT` + 1 WHERE IPADDRESS = :ipaddress";
              $mydb->InsertThis($updateQuery, [
                  ':ipaddress' => $ipAddress,
              ]);
          } else {
              $insertQuery = "INSERT INTO `loginattemp`(`IPADDRESS`,`ATTEMPCOUNT`) VALUES (:ipaddress, 1)";
              $mydb->InsertThis($insertQuery, [
                  ':ipaddress' => $ipAddress,
              ]);
          }
         $remaining = 2 - $single_res->ATTEMPCOUNT;
         $error_message = 'Account does not exist! You have only ' . $remaining . ' attempt(s) remaining.';
          
      }
   }
}
?>
	<!doctype html>
	<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<meta name="description" content="Responsive Bootstrap4 Dashboard Template">
		<meta name="author" content="ParkerThemes">
		<title>CRUD - Login</title>
		<link rel="stylesheet" href="<?php echo WEB_ROOT ?>css/bootstrap.min.css" />
		<link rel="stylesheet" href="<?php echo WEB_ROOT ?>css/main.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
	</head>
	<body>
		<div class="container">
			<form action="#" method="post">
				<div class="row justify-content-md-center">
					<div class="col-xl-4 col-lg-5 col-md-6 col-sm-12">
						<div class="login-screen">
							<div class="login-box">
								<a href="#" class="">
									<img width="100%" src="<?php echo WEB_ROOT ?>img/logo-dark.png" />
								</a>
								<br>
								<br>
								<h5 class="text-center">Please Login to your Account.</h5>
								
									<div class="form-group">
									<input type="text" class="form-control" name="username" placeholder="Username" />
								</div>
								<div class="form-group">
									<input type="password" class="form-control" name="userpass" placeholder="Password" />
								</div>
								<div class="form-group" style="text-align: center;">
			                        <p <?php echo $displayWarning; ?> style="color:red; display: inline; margin: 0;">
			                            <i class="fa fa-ban" style="font-size:20px;color:red;"></i>
			                            You are temporarily blocked <span id="countdown" style="display: inline;">60</span> sec(s). Don't refresh the page!
			                        </p>

			                        <?php if ($displayWarning == 'style="display:none;"' && !empty($error_message)): ?>
			                            <p style="color:red; display: inline; margin: 0;" class="message error"><?php echo $error_message; ?></p>
			                        <?php endif; ?>
			                    </div>
			                    <input type="hidden" name="REMOTE_ADDR" id="REMOTE_ADDR" value="<?php echo $_SERVER['REMOTE_ADDR']; ?>" />
								<div class="actions mb-4">
									<button type="submit" class="btn btn-primary" name="btnLogin">Login</button>
								</div>

							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>
<?php
}
?>
<script src="../theme/js/login.js"></script>
<script src="<?php echo WEB_ROOT; ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<?php echo WEB_ROOT; ?>dist/js/adminlte.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>