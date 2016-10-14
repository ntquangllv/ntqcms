
SCRIPT_DIR=`dirname $0`
. $SCRIPT_DIR/config.sh

echo ""
echo "------------------------------------------------------------------"
echo ""
## Build Database Storage Container
echo "    o=={{============> Create Database storage container"
echo ""
docker run -d \
	--name=ntq_cms_dbstorage_dev \
	ntq_cms_dbserver_dev_img \
	true
echo "------------------------------------------------------------------"
echo ""
## Build Database Server Container
echo "    o=={{============> Create Database server container"
echo ""
docker run -d \
	--name=ntq_cms_dbserver_dev \
	--volumes-from=ntq_cms_dbstorage_dev \
	-v $HOST_DB_DIR:/home/ \
	-p 3396:3306 \
	ntq_cms_dbserver_dev_img
echo "------------------------------------------------------------------"
echo ""
## Build Web Server Container 
echo "    o=={{============> Create Web server container"
echo ""
docker run -d \
	--name=ntq_cms_webserver_dev \
	--link ntq_cms_dbserver_dev:db \
	-v $HOST_WEB_DIR:/var/www/html/ \
	-p 8096:80 \
	ntq_cms_webserver_dev_img
echo "------------------------------------------------------------------"
echo ""
echo "         <<<<<< Creating containers done >>>>>>"
echo "------------------------------------------------------------------"
echo ""
