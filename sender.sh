#!/bin/bash

SENDER=$MINA_PUBLIC_KEY
RECIVER=B62qjUn8PNtvKHMg7wAwD3o2CBNHE7gm4ZX2H8A8jqkbuhKnGioCM7T
FEE=450
AMOUNT=0.1

COUNT=15

while [ $COUNT -gt 0 ]
do
coda client send-payment \
-sender $SENDER \
-receiver $RECIVER \
-fee $FEE \
-amount 0.01
sleep 30
((COUNT--))
done
