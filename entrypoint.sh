echo 'nohup ./confd ${CONFD_ARGS:-"-onetime -backend file -file conf.yaml"} > confd.log 2>&1&' > /confd.sh && chmod +x /confd.sh && /confd.sh && nginx -g 'daemon off;'