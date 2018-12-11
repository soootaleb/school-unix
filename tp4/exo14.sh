
BOLD=$(tput bold)
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC=$(tput sgr0)

[ $1 -gt 12 ] && echo "${RED}Supérieur à 12${NC}" && exit

((n=2**$1))

echo "${BOLD}Generating 10 numbers between 1 and $n${NC}"

for o in $(seq 10); do
    echo $(($RANDOM % n + 1))
done