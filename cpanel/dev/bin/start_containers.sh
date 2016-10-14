SCRIPT_DIR=`dirname $0`
. $SCRIPT_DIR/config.sh

echo ""
echo "Start containers of dbserver and webserver"
echo "------------------------------------------"
sudo docker start ntq_cms_dbserver_dev
sudo docker start ntq_cms_webserver_dev
echo "------------------------------------------"
echo ""
