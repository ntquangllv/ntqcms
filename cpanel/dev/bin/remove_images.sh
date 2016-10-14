SCRIPT_DIR=`dirname $0`
. $SCRIPT_DIR/config.sh

echo ""
echo "     o=={{============> Docker remove images:"
sudo docker rmi ntq_cms_dbserver_dev_img
sudo docker rmi ntq_cms_webserver_dev_img
echo ""
