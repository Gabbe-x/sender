#!/bin/bash

SENDER=B62qpjbpDtVVa6DJWFFz2Xi5PSQ1KR7cX1LzoKcii7bLo1mZZt18APV
RECIVER=B62qjUn8PNtvKHMg7wAwD3o2CBNHE7gm4ZX2H8A8jqkbuhKnGioCM7T
FEE=210
AMOUNT=0.1

COUNT=15

while [ $COUNT -gt 0 ]
do
coda client send-payment \
-sender $SENDER
-reciver $RECIVER
-fee $FEE
-amount $AMOUNT
sleep 15
((COUNT--))
done
