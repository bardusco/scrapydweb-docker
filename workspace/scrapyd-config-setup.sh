#!/bin/sh
sed -i "s/##USER##/$SCRAPYD_USERNAME/" ./scrapyd.conf
sed -i "s/##PASS##/$SCRAPYD_PASSWORD/" ./scrapyd.conf
exec "$@"
