echo Welcome to the password generator

echo how long would you like the password to be?

read var1

echo would you like it to contain numbers, or symbols as well [y/ n]?

read var2 

if [ "$var2" = "y" ]; then
 
password=$(openssl rand -base64 $var1)


else
  
password=$(cat /dev/urandom | LC_CTYPE=C tr -dc 'A-Za-z0-9' | head -c $var1)

fi


echo "The password is: $password"