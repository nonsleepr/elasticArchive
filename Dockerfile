FROM mitmproxy/mitmproxy:6.0.2

ENV ELASTIC_SERVER= STORE_BINARY_CONTENT=false

RUN pip install --upgrade pip && \
    pip install --no-cache-dir requests netlib
    
COPY scripts/elasticArchive.py /scripts/