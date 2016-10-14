SCRIPT_DIR=`dirname $0`
. $SCRIPT_DIR/config.sh

echo ""
echo "Stop containers of dbserver and webserver"
echo "------------------------------------------"
sudo docker stop ntq_cms_dbserver_dev
sudo docker stop ntq_cms_webserver_dev
echo "------------------------------------------"
echo ""
