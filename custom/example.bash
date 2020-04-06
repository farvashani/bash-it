#!/usr/bin/env bash
#
# This is an example file. Don't use this for your custom scripts. Instead, create another file within the
# custom directory.
proxysh() {
   if [ -z "$1" ]
then
      server=$(echo "debian@194.5.207.57")
      echo "$server"
      hostname=$(echo $server | grep -oP '(?<=@).*')
else
      server=$(echo $1)
      hostname=$(echo $server | grep -oP '(?<=@).*')
fi
echo "sshuttle is connecting  to $server...."
        

        
    
  sshuttle --dns --verbose --remote $server --exclude $hostname -x localhost -x 127.0.0.1 -x 192.168.1.1 -x 192.168.1.242 -x 192.168.1.0/24  0/0
}