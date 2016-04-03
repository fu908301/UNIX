#!/bin/tcsh
set myusrname = $argv[1]
set mypwd = $argv[2]
echo -n "\n\nUNIX System V, Release 2.2 (pokey)\n\n"
echo -n "login:"
set usrname = $<
echo -n "password:"
set pwd = $<
set i = 1
while($i<3)
  if($usrname != $myusrname||$pwd != $mypwd)then
    echo "login incorrect."
    echo -n "login:"
    unset usrname
    set usrname = $<
    echo -n "password:"
    unset pwd
    set pwd = $<
    @ i++
  else if ($usrname == $myusrname&&$pwd == $mypwd)then
    echo -n "\nWelcome to Unix\n\nPlease clean up your directories. The filesystem is getting full.\nOur tcp/ip link to gamma is a little flaky, but seems to work.\nThe current version of ftp can only send files from your home\ndirectory, and deletes them after they are sent!  Be careful.\n\nNote: Restricted bourne shell in use.\n"
    exit 0
  endif
end
echo "You have already typed 3 times.The system is shutdown now."
