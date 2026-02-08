ARG VERSION
FROM ghcr.io/netbox-community/netbox:${VERSION}

RUN rm /opt/netbox/netbox/local/release.yaml
RUN /usr/local/bin/uv pip install \
    netbox-plugin-dns \
    netbox-interface-synchronization \
    netbox-reorder-rack \
    netbox-qrcode
#    nextbox-ui-plugin
#    netbox-device-view

RUN echo 'PLUGINS = [ \
    "netbox_dns", \
    "netbox_reorder_rack", \
    "netbox_interface_synchronization", \
    "netbox_qrcode", \
    ] \n' > /etc/netbox/config/plugins.py
#PLUGINS_CONFIG = {"netbox_device_view": { "show_on_device_tab": True }}' 
#    "netbox_device_view"
#    

RUN DEBUG="true" SECRET_KEY="dummydummydummydummydummydummydummydummydummydummydummy" \
    /opt/netbox/venv/bin/python /opt/netbox/netbox/manage.py collectstatic --no-input
