#!/bin/bash

# Base directory
base_dir="./node_modules"

# Pick the tailcall executable
for core_dir in $(find "$base_dir" -type d -name "core-*"); do
    tailcall_executable="${core_dir}/bin/tailcall"

    # Check if the tailcall executable exists
    if [[ -x "$tailcall_executable" ]]; then
        echo "Executing $tailcall_executable"

        # Run the executable with the specified arguments
        TC_LOG_LEVEL=error "$tailcall_executable" start ./main.graphql --log-level error
        exit 0
    fi
done

echo "tailcall executable not found."
exit 1
