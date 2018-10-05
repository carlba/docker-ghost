#!/usr/bin/env bash

tee /etc/msmtprc <<EOF > /dev/null
# Set default values for all following accounts.
defaults
auth           on
tls            on
tls_trust_file /etc/ssl/certs/ca-certificates.crt
syslog         on

# Gmail
account        gmail
host           $SMTP_HOST
port           $SMTP_PORT
from           $SMTP_FROM
user           $SMTP_USER
password       $SMTP_PASSWORD

# Set a default account
account default : gmail
aliases        /etc/aliases
EOF

ln -sf /usr/bin/msmtp /usr/sbin/sendmail