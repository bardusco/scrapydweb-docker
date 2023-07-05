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

❯ cat .env
SCRAPYD_SERVERS=172.17.0.1:6800
USERNAME=my_name
PASSWORD=my_very_secure_password
