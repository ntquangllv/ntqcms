SCRIPT_DIR=`dirname $0`
. $SCRIPT_DIR/config.sh

sudo docker exec -it ntq_cms_dbserver_dev \
		/bin/bash \
			-c "export TERM=xterm; exec bash"
