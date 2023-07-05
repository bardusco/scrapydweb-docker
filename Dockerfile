FROM vimagick/scrapyd
COPY workspace/ /app
WORKDIR /app
RUN mkdir -p /var/log/scrapyd

RUN pip3 install scrapy-user-agents scrapy_playwright
RUN playwright install
RUN playwright install-deps

RUN apt-get update && \ 
  apt-get install -y git && \
  pip3 install -U git+https://github.com/bardusco/scrapydweb.git && \
  apt-get remove -y git
