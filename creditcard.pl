#!/usr/bin/perl

use CGI qw/:all/;
use CGI::Carp qw(fatalsToBrowser warningsToBrowser);  

print header,start_html('authentication');
warningsToBrowser(1);




$username = param('username');
$password = param('password');

if (($username eq "") && ($password ne "")){
print <<eof;
<form method="post" action="">
Enter Username: <input type="text" name="username"><br>
<input type="hidden" name="password" value="$password">
<input type="submit" name="submit">
eof
} elsif (($username ne "") && ($password eq "")){
print <<eof;
<form method="post" action="">
Enter Password: <input type="text" name="password"<br>
<input type="hidden" name="username" value="$username">
<input type="submit" name="submit">
eof
} elsif (($username ne "") && ($password ne "")){

	open FILE, "../accounts/$username/password";
	$realP = <FILE>;
	chomp ($realP);
	if ("$realP" eq "$password"){
		print "correct combination\n";
	} else {
		print "incorrect password\n";
	}
print <<eof;
<form method="post" action="">
<input type="submit" name="submit" value="return">
eof

} else {
print <<eof;
<form method="post" action="">
Enter Username: <input type="text" name="username"><br>
Enter Password: <input type="text" name="password"<br>
<input type="submit" name="submit">
eof
}













