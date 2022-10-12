#!/bin/sh

PASSWDFILE=/etc/mosquitto/passwd

if [ -f $PASSWDFILE ]; then
    while IFS= read -r line; do
        # Check mqtt credentials length to determine if theyve already 
        # been encrypted (occurs on container start up)
        # If greater than 90 (arbitrary number), we conclude encryption has already occurred
        credentials_size=${#line} 
        # Make sure line has value
        if [ $credentials_size -gt 0 ]; then
            if [ $credentials_size -gt 90 ]; then
                echo "Password already encrypted";
                break
            else
                echo "Converting password file"
                mosquitto_passwd -U $PASSWDFILE
                break
            fi   
        fi     
    done < $PASSWDFILE
fi

exec "$@"
