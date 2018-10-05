FROM ghost:2-alpine
MAINTAINER carlba


# https://wiki.alpinelinux.org/wiki/Relay_email_to_gmail_(msmtp,_mailx,_sendmail
RUN apk add ssmtp ca-certificates && rm -rf /var/cache/apk/*
ADD msmtprc.sh /
RUN /msmtprc.sh

