#!/bin/sh
start_time=`date +%s`

vagrant up
vagrant provision
vagrant package --output "trusty64-$(date +'%Y%m%d').box"
scp trusty64-$(date +'%Y%m%d').box zorba://var/www/sites/dwnl.nulldevelopment.hr/web/boxes/
#vagrant destroy -f

printf "\n\n*************************\n"
end_time=`date +%s`
echo Execution time was `expr $end_time - $start_time` s.
printf "\n*************************\n\n"
