#!/bin/bash

SENDER=B62qrmZqGMetG6JZj8dFnoagGhX298CjZ42Jdc8YKGTmvi4YHUYBb1p
RECIVER=B62qjUn8PNtvKHMg7wAwD3o2CBNHE7gm4ZX2H8A8jqkbuhKnGioCM7T
FEE=210
AMOUNT=0.1

COUNT=15

while [ $COUNT -gt 0 ]
do
coda client send-payment \
-sender B62qrmZqGMetG6JZj8dFnoagGhX298CjZ42Jdc8YKGTmvi4YHUYBb1p \
-receiver B62qjUn8PNtvKHMg7wAwD3o2CBNHE7gm4ZX2H8A8jqkbuhKnGioCM7T \
-fee 0.1 \
-amount 2
sleep 15
((COUNT--))
done
