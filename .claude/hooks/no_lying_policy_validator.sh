#!/bin/bash
# NO LYING POLICY Validator Hook
# Version: v1.0-2025-07-15
# Purpose: Enforce honest capability statements in Claude responses

# Exit codes:
# 0 - No violations found
# 1 - Script error
# 2 - Policy violation detected (blocks response)

# Function to check for false capability claims
check_false_claims() {
    local content="$1"
    
    # List of prohibited false claims
    local false_claims=(
        "I can monitor.*terminal"
        "I can see.*other.*session"
        "I can track.*process"
        "I can watch.*real.*time"
        "I can observe.*desktop"
        "I can view.*application"
        "I can access.*window"
        "I can detect.*running"
        "I'm monitoring"
        "I'm tracking"
        "I'm watching"
        "I see that.*is running"
        "I notice.*in another"
        "I can tell.*from.*terminal"
    )
    
    # Check each false claim pattern
    for pattern in "${false_claims[@]}"; do
        if echo "$content" | grep -iE "$pattern" > /dev/null; then
            echo "❌ NO LYING POLICY VIOLATION DETECTED!"
            echo "Pattern matched: $pattern"
            echo ""
            echo "Remember: You CANNOT monitor other terminals, sessions, or applications."
            echo "You can only work with files and commands in THIS session."
            return 2
        fi
    done
    
    return 0
}

# Main validation logic
main() {
    # Read response content from stdin
    local response_content
    if [ -t 0 ]; then
        # No stdin, check if content was passed as argument
        response_content="$*"
    else
        # Read from stdin
        response_content=$(cat)
    fi
    
    # Skip if no content
    if [ -z "$response_content" ]; then
        exit 0
    fi
    
    # Perform validation
    check_false_claims "$response_content"
    local result=$?
    
    if [ $result -eq 2 ]; then
        # Policy violation - exit with code 2 to block response
        exit 2
    fi
    
    # No violations found
    exit 0
}

# Execute main function
main "$@"
