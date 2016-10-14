SCRIPT_DIR=`dirname $0`
. $SCRIPT_DIR/config.sh

sudo docker exec ntq_cms_dbserver_dev \
			mysql -uroot -p121212 \
			< ${1:-/dev/stdin}
