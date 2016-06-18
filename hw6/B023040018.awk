#!/usr/bin/awk -f
NR==1{OFS="   "
      for(i=2;i<=9;i=i+1)
        L1[i]=$i
      $1=$1
      OFS="  "
  }
(NR>1&&NR%2!=0){for(i=1;i<=9;i=i+1)
      if($i!="\n"&&$i in L2)
        $i=L2[$i]
      else
      { L2[$i]=L1[i](NR-1)/2
        $i=$i" " 
      }
  }
  1
