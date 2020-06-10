#! /usr/bin/awk -f

{
     if (  $2 == "9," && $3 == "2010,") 
     print $0  
}
