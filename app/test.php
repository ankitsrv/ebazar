$SESSION[]

$username = $POST['username'];
$password = $POST['password'];

$encrypted_password = encrypt($password);

$sql = "select * from users where username = '". $username . "' and password = '" . $encrypted_password . "' limit 1";

$rs = mysql_query($sql);

$user = $rs.res

---------------------------------

username: ranu.singh
password: payu@1234

"select * from users where username = 'ranu.singh' and password = 'fjhgsdgfjsd5345' limit 1";
"select * from users where username = ? and password = ? limit 1";

username: 1' or 1 = 1 --
password: sdfdg


select * from users where username = '1' or 1 = 1 --'  password = 'sdfdg' limit 1