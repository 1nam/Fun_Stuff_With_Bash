#!/bin/bash
#Supports floating-point arithmetic

#Keeps a history of all calculations

#Use _ to refer to the last result (e.g., _ + 5)

#h command to view all previous calculations

#Clean and interactive loop
#Operator symbols (+ - * / %) are highlighted in red

#Results show in green, headers in cyan, and instructions in yellow

#Keeps history and supports _ for last result

#Safe handling of invalid expressions
# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Initialize history array
history=()

while true; do
    clear
    echo -e "${CYAN}=== Mini Fancy Bash Calculator ===${NC}"
    echo -e "${YELLOW}Type 'q' to quit, 'h' for history, or use '_' for last result.${NC}"
    echo

    read -p "Enter expression: " expr
    [[ $expr == "q" ]] && break

    if [[ $expr == "h" ]]; then
        echo -e "${CYAN}History:${NC}"
        for i in "${!history[@]}"; do
            echo -e "${GREEN}$((i+1))${NC}: ${history[i]}"
        done
        read -p "Press enter to continue..."
        continue
    fi

    # Replace _ with last result if available
    if [[ $expr == *"_"* ]]; then
        last_result="${history[-1]##*= }"
        expr="${expr//_/$last_result}"
    fi

    # Highlight operators in the expression
    highlighted_expr=$(echo "$expr" | sed -E "s/(\+|\-|\*|\/|%)/${RED}\1${NC}/g")

    echo -e "Calculating: $highlighted_expr"

    # Evaluate expression using bc
    result=$(echo "scale=4; $expr" | bc 2>/dev/null)

    if [[ -z "$result" ]]; then
        echo -e "${RED}Invalid expression!${NC}"
    else
        echo -e "${GREEN}Result: $result${NC}"
        history+=("$expr = $result")
    fi

    read -p "Press enter to continue..."
done

clear
echo -e "${CYAN}Goodbye!${NC}"
