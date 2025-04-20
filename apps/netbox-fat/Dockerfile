ARG VERSION
FROM netbox:${VERSION}

RUN /usr/local/bin/uv pip install netbox-plugin-dns netbox-qrcode netbox-interface-synchronization netbox-reorder-rack nextbox-ui-plugin
RUN DEBUG="true" SECRET_KEY="dummy" \
    /opt/netbox/venv/bin/python /opt/netbox/netbox/manage.py collectstatic --no-input
