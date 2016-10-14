export MYSQL_OLD_PASSWORD="121212"
export MYSQL_NEW_PASSWORD="123456"

sudo docker run --rm --link ntq_cms_dbserver_dev:myalias mysql:5.7 mysql \
            -hmyalias -uroot -p$MYSQL_OLD_PASSWORD \
            -e "FLUSH PRIVILEGES; SET PASSWORD FOR root = PASSWORD('$MYSQL_NEW_PASSWORD');"

