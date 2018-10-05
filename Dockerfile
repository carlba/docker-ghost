FROM ghost:2-alpine
MAINTAINER carlba

ENV SMTP_HOST=$SMTP_HOST
ENV SMTP_PORT=$SMTP_PORT
ENV SMTP_FROM=$SMTP_FROM
ENV SMTP_USER=$SMTP_USER
ENV SMTP_PASSWORD=$SMTP_PASSWORD


# https://wiki.alpinelinux.org/wiki/Relay_email_to_gmail_(msmtp,_mailx,_sendmail
RUN apk add ssmtp ca-certificates && rm -rf /var/cache/apk/*
ADD msmtprc.sh /
RUN /msmtprc.sh

