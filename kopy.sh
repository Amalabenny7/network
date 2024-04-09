#modify cp commands considering error possibilities
if [ $# -ne 2 ]
then 
   echo "\nSyntax is <$0> <src flle name> <tgt file name>"
   exit 1
fi 
if [ ! -f $1 ]
then
   echo " $1 is not existing  or not an ordinary file "
   exit 2
fi
if [ -f $2 ]
then 
   echo "Target file exists , over write it(y/n)"
   read ans
 if [ $ans = "n" ]
 then 
   exist 3
 fi
fi
cp $1 $2
echo "File Copied"
