#! /usr/bin/awk -f

{
     if ( $4 >= "7" ) 
     print "yes"$4"yes"
     else
     print "no"$4"no"
}