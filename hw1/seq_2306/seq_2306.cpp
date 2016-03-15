#include <iostream>
#include <fstream>
using namespace std;
int main()
{
  fstream cat;
  fstream cd;
  fstream echo;
  fstream _exit;
  fstream ftp;
  fstream gunzip;
  fstream gzip;
  fstream ls;
  fstream pwd;
  fstream rlogin;
  cat.open("cat",ios::out);
  cd.open("cd",ios::out);
  echo.open("echo",ios::out);
  _exit.open("exit",ios::out);
  ftp.open("ftp",ios::out);
  gunzip.open("gunzip",ios::out);
  gzip.open("gzip",ios::out);
  ls.open("ls",ios::out);
  pwd.open("pwd",ios::out);
  rlogin.open("rlogin",ios::out);
  for(int i = 1;i <= 2306;i++)
  {
    cat<<i<<" ";
    cd<<i<<" ";
    echo<<i<<" ";
    _exit<<i<<" ";
    ftp<<i<<" ";
    gunzip<<i<<" ";
    gzip<<i<<" ";
    ls<<i<<" ";
    pwd<<i<<" ";
    rlogin<<i<<" ";
  }
  cat.close();
  cd.close();
  echo.close();
  _exit.close();
  ftp.close();
  gunzip.close();
  gzip.close();
  ls.close();
  pwd.close();
  rlogin.close();
  return 0;
}
