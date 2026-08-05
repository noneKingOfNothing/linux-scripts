#!/bin/bash

# Define a function to print system info
print_system_info() {
    echo "Printing system information..."
    uname -a
    df -h
    free -m
}

# Call the function per different cases
case 1 in
    (1) print_system_info;;
esac

case 2 in
    (2)
        echo "Second case triggered."  # Added missing 'echo'
        lsblk;;
esac

case 3 in
    (3)
        echo "Third case triggered."
        top;;
esac

# Default case
case "default" in               # Added value and 'in'
    *)
        echo "No specific case matched.";;
esac