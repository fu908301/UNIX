#!/bin/tcsh
echo -n "\n\nUNIX System V, Release 2.2 (pokey)\n\nlogin:"
set usrname = $<
echo -n "password:"
set pwd = $<
set i = 1
while($i<4)
  if($usrname == $argv[1]&&$pwd == $argv[2])then
    echo -n "\nWelcome to Unix\n\nPlease clean up your directories. The filesystem is getting full.\nOur tcp/ip link to gamma is a little flaky, but seems to work.\nThe current version of ftp can only send files from your home\ndirectory, and deletes them after they are sent!  Be careful.\n\nNote: Restricted bourne shell in use.\n"
    exit 0
  else if(($usrname != $argv[1]||$pwd != $argv[2])&&$i<3)then
      echo "login incorrect.\nlogin:"
      set usrname = $<
      echo -n "password:"
      set pwd = $<
    endif
  endif
  @ i++
end
echo "You have already typed 3 times.The system shutdown now."
