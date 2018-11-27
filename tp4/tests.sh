#!/bin/sh
BOLD=$(tput bold)
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC=$(tput sgr0)

echo "${BOLD}${BLUE}========= Testing TP4 =========${NC}"
echo "${BOLD}${BLUE}======= boucle.sh =======${NC}"

echo "${BOLD}Test 1: With 3 arguments${NC}"

result=$(./boucle.sh 5 15 3)
expected=$(seq 5 3 15)

if [ "$expected" = "$result" ]; then
    echo "\t${GREEN}SUCCESS${NC}"
else
    echo "\t${RED}FAILED${NC}"
fi

result=$(./boucle.sh 1 30 2)
expected=$(seq 1 2 30)

if [ "$expected" = "$result" ]; then
    echo "\t${GREEN}SUCCESS${NC}"
else
    echo "\t${RED}FAILED${NC}"
fi

echo "${BOLD}Test 2: With 2 arguments${NC}"

result=$(./boucle.sh 5 15)
expected=$(seq 5 15)

if [ "$expected" = "$result" ]; then
    echo "\t${GREEN}SUCCESS${NC}"
else
    echo "\t${RED}FAILED${NC}"
fi

result=$(./boucle.sh 1 30)
expected=$(seq 1 30)

if [ "$expected" = "$result" ]; then
    echo "\t${GREEN}SUCCESS${NC}"
else
    echo "\t${RED}FAILED${NC}"
fi

echo "${BOLD}Test 3: With 1 argument${NC}"

result=$(./boucle.sh 10)
expected=$(seq 10)

if [ "$expected" = "$result" ]; then
    echo "\t${GREEN}SUCCESS${NC}"
else
    echo "\t${RED}FAILED${NC}"
fi

result=$(./boucle.sh 2)
expected=$(seq 2)

if [ "$expected" = "$result" ]; then
    echo "\t${GREEN}SUCCESS${NC}"
else
    echo "\t${RED}FAILED${NC}"
fi

echo "${BOLD}Test 4: With no arguments${NC}"

result=$(./boucle.sh)
expected=$(seq 30)

if [ "$expected" = "$result" ]; then
    echo "\t${GREEN}SUCCESS${NC}"
else
    echo "\t${RED}FAILED${NC}"
fi