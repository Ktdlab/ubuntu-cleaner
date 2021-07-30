if ! [ $(id -u) = 0 ]; then
	   echo "The script need to be run as root." >&2
	      exit 1
fi

if [ $SUDO_USER ]; then
	    real_user=$SUDO_USER
    else
	        real_user=$(whoami)
fi


clear
echo "Ubuntu Cleaner 1.2V"
echo ""
/bin/sleep 3
clear
echo "Loading"
/bin/sleep 1
clear
echo "Loading."
/bin/sleep 1
clear
echo "Loading.."
/bin/sleep 1
clear
echo "Loading..."
/bin/sleep 1
clear
echo "Loading...."
/bin/sleep 1
clear
echo "Loading....."
echo ""
echo "Script has been successfully loaded"
/bin/sleep 1
clear
echo "This script has an EULA that needs your consent"      
echo "if you use it, you grant consent as well"             
#/bin/sleep 6                                                 
echo "Press Ctrl+C to exit"    

echo ""
/bin/sleep 5

du -sh /var/cache/apt/archives
yes | apt-get clean
yes | apt-get autoremove --purge
yes | apt-get update
yes | apt-get upgrade
