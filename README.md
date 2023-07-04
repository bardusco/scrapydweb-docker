# Scrapydweb Dockerfile

```bash
docker build -t scrapydweb:latest https://github.com/bardusco/scrapydweb-docker.git\#master
docker run --name scrapydweb -e USERNAME=<username> \
    -e PASSWORD=<password> \
    -e SCRAPYD_SERVERS=<servers> \
    -v /data/scrapydweb_data:/usr/local/lib/python3.11/site-packages/scrapydweb/data \
    -v /etc/timezone:/etc/timezone \
    -p 5000:5000 \
    -d scrapydweb:latest
```

- USERNAME: basic auth username, default: admin
- PASSWORD: basic auth password, default: admin
- SCRAPYD_SERVERS: scrapyd servers
