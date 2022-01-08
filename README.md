# Website-status-checker-restart-app-if-failed
Website ststus check, and launch/restart app if failed

Just edit the script to reflect the site you want to check.

In the example, on failure, the script starts a process manager (pm2) which 
re-launches a httpd apache server, you could substitute whatever you wanted here


#!/bin/sh

/usr/bin/curl -s --head  --request GET https://sitetocheck.com | if ! grep "200 OK"; then
exec pm2 restart 0

fi

# 0 being designated by pm2 as HTTPD

And that's all there is to it!

For PM2 see https://github.com/AImissq/pm2

