#!/bin/bash
CERT_SRC="/etc/letsencrypt/live/mail.comacpro.com.vn"
CERT_DEST="/opt/data/mailcow-certs"

mkdir -p "/opt/data/mailcow-certs"

cp $CERT_SRC/fullchain.pem $CERT_DEST/cert.pem
cp $CERT_SRC/privkey.pem   $CERT_DEST/key.pem
cp $CERT_SRC/chain.pem     $CERT_DEST/chain.pem
chmod 644 $CERT_DEST/*.pem
