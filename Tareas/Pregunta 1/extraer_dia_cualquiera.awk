#! /usr/bin/awk -f

{
     for (i=1;i<=30 ; i++) {
          for (j=1;j<=12 ; j++) {
               
               d= ""i","
               m= ""j","
               a="2010," 

               if ( $1 == d && $2 == m && $3 == a ) {
                    d= ""i""
                    m= ""j""
                    a="2010" 
                    print $0 > ("./EXtRaCthor/datos_"d"_"m"_"a".dat")
               }
     
     }   
     }     
}


