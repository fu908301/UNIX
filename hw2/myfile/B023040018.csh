#!/bin/tcsh
echo -n "\n\nUNIX System V, Release 2.2 (pokey)\n\n"
set i = 0
while($i<3)
  echo -n "login:"
  set u = $<
  echo -n "password:"
  set p = $<
  if($u == $argv[1]||$p == $argv[2])then
      echo -n "\nWelcome to Unix\n\nPlease clean up your directories. The filesystem is getting full.\nOur tcp/ip link to gamma is a little flaky, but seems to work.\nThe current version of ftp can only send files from your home\ndirectory, and deletes them after they are sent!  Be careful.\n\nNote: Restricted bourne shell in use.\n"
      exit 0
      endif
  echo -n "login incorrect.\n"
  @ i++
end
