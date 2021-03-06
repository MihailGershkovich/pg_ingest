#!/bin/bash

useradd -G wwwrun -d /srv/pg_ingest pg_ingest # home directory in srv, should be configured to v-host in apache
cp .. /srv/pg_ingest

# change file ownership and rights - need more security!
chmod -R +r /srv/pg_ingest/*
chmod -R -r+x /srv/pg_ingest/bin
sudo su pg_ingest
cd ~
mkdir logs tmp uploads
wget "https://vuejs.org/js/vue.min.js" -O "js/vue.js"
wget "https://github.com/SheetJS/sheetjs/blob/master/xlsx.mini.js" -O "js/xlsx.mini.js"
# we need to configure apache to run this as v-host!
# apache2-mpm-itk (http://mpm-itk.sesse.net) can allow us to run this scripts as dedicated user - pg_ingest
# cp ../bin ~/

# help to setup ~/.profile with db credentials
# setup database
# enable and start the service
