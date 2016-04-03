#include <stdio.h>
#include <string.h>
int printmsg()
{ printf("\nWelcome to Unix\n\n");
  printf("Please clean up your directories.  The filesystem is getting full.\n");
  printf("Our tcp/ip link to gamma is a little flaky, but seems to work.\n");
  printf("The current version of ftp can only send files from your home\n");
  printf("directory, and deletes them after they are sent!  Be careful.\n");
  printf("\nNote: Restricted bourne shell in use.\n");
  return 0;
}
int main(int argc, char **argv)
{ int i;
  char N[80],P[80];
  for (i=0; i<3; i++)
  { printf("\n\nUNIX System V, Release 2.2 (pokey)\n\n");
    printf("login: ");
    gets(N);
    printf("password: ");
    gets(P);
    if ((strcmp(N,argv[1])==0)&&(strcmp(P,argv[2])==0))
      return printmsg();
    printf("login incorrect\n");
  }
  return 2;
}
