FROM aceberg/watchyourlan

RUN apk add --no-cache openssh

COPY arp-scan /usr/bin/arp-scan

CMD ["sh"]
