PLUGINS_DIR=/etc/sensu/plugins
HANDLERS_DIR=/etc/sensu/handlers
source /etc/default/sensu
extra_path_bits=$PLUGINS_DIR:$HANDLERS_DIR

if [ "$(whoami)" == "sensu" ] ; then
    if ! echo ${PATH} | /bin/grep -q /opt/sensu/embedded/bin ; then
            export PATH=/opt/sensu/embedded/bin:$PATH:${extra_path_bits}
    fi
    if ! echo ${GEM_PATH} | /bin/grep -q //opt/sensu/embedded/lib/ruby/gems/2.0.0 ; then
            export GEM_PATH=/opt/sensu/embedded/lib/ruby/gems/2.0.0:$GEM_PATH
    fi
fi
