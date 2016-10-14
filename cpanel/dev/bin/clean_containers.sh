SCRIPT_DIR=`dirname $0`
. $SCRIPT_DIR/config.sh
echo ""
echo "     o=={{============> Docker stop containers:"
sudo docker stop ntq_cms_dbserver_dev
sudo docker stop ntq_cms_webserver_dev
echo ""
echo "     o=={{============> Docker remove containers:"
sudo docker rm ntq_cms_dbserver_dev
sudo docker rm ntq_cms_webserver_dev
echo ""
