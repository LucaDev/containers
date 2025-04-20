ARG VERSION
FROM ghcr.io/netbox-community/netbox:${VERSION}

COPY ./plugin-requirements.txt /opt/netbox/
RUN /usr/local/bin/uv pip install -r /opt/netbox/plugin-requirements.txt
RUN DEBUG="true" SECRET_KEY="dummydummydummydummydummydummydummydummydummydummydummy" \
    /opt/netbox/venv/bin/python /opt/netbox/netbox/manage.py collectstatic --no-input
