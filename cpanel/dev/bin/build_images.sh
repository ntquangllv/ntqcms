
SCRIPT_DIR=`dirname $0`
. $SCRIPT_DIR/config.sh

## Build images
echo ""
echo "-------------------------------------------------------------------------"
echo ""
echo "       o=={{============>  Build Database server image"
echo "-------------------------------------------------------------------------"
sudo docker build -t \
				ntq_cms_dbserver_dev_img \
				$CMS_HOME/cpanel/dev/docker/dbserver/
echo "-------------------------------------------------------------------------"
echo ""
echo "       o=={{============> Build Web server image"
echo "-------------------------------------------------------------------------"
sudo docker build -t \
				ntq_cms_webserver_dev_img \
				$CMS_HOME/cpanel/dev/docker/webserver/
echo "-------------------------------------------------------------------------"
echo ""
echo "           <<<<<<< Building images done >>>>>>>> "
echo "-------------------------------------------------------------------------"
echo ""
