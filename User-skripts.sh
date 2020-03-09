
help(){   
echo  -e "--name - user name\n--pass - passwords\n--rol - user rols"
}

while [[ $# > 1 ]]
do
 par="$1"
    case $par in
	--name)
	  user_name="$2"
	shift
	if [[ $user_name =~ ^[a-Z]+$ ]];
    then
        echo "Name valid"
    else
        echo "Error: name invalid"
        exit 1
    fi

	;; 
	--pass)
	  user_password="$2"
	shift
	;;
	--rol)
	  user_rols="$2"
	shift
	;;	
    esac
    	shift
done
 
echo -e "$user_name"
echo -e "$user_password"
echo -e "$user_rols"

if [ -z $user_name ];
   then
	  echo "Error: name NOT exist"
	   help; 
	    exit 1
fi

if [ -z $user_password ];
   then
    	echo "Error: password NOT exist"
   	 help;
	  exit 1
fi

if [ -z $user_rols ];
   then
    	 echo "Error: rols NOT exist"
  	  help;
	   exit 1
fi


tests()
{
if [[ $user_name =~ ^[a-Z]+$ ]];
    then
        echo "Name valid"
    else
        echo "Error: name invalid"
        exit 1
    fi
    

}

	echo "$user_name  $user_password  $user_rols " >> test

