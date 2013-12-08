knife node list | while read line; do
  role=`knife node show $line -a roles | awk 'FNR==2' | sed "s/  roles: //g"`
  fqdn=`knife node show $line -a fqdn | awk 'FNR==2' | sed "s/  fqdn: //g"`
  if [ "$role" == $1 ]; then
     ssh root@$fqdn -i /root/aws/mobileServer.pem chef-client
  fi
done
