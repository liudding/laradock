#!/bin/bash

letsencrypt certonly --webroot -w /var/www/letsencrypt -d "$CN" --agree-tos --email "$EMAIL" --non-interactive --text

cp /etc/letsencrypt/live/"$CN"/cert.pem /var/certs/"$CN"-cert.pem
cp /etc/letsencrypt/live/"$CN"/chain.pem /var/certs/"$CN"-chain.pem
cp /etc/letsencrypt/live/"$CN"/fullchain.pem /var/certs/"$CN"-fullchain.pem
cp /etc/letsencrypt/live/"$CN"/privkey.pem /var/certs/"$CN"-privkey.pem