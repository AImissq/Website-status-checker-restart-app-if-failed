#!/bin/sh

/usr/bin/curl -s --head  --request GET https://sitetocheck.com | if ! grep "200 OK"; then
pm2 restart httpd

fi

