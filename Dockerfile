FROM vimagick/scrapyd
ADD ./workspace/ /app
WORKDIR /app

RUN apt-get update && \ 
  apt-get install -y git && \
  pip3 install -U git+https://github.com/bardusco/scrapydweb.git && \
  apt-get remove -y git
