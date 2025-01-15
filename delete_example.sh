#!/bin/bash

# Check if the C directory exists and delete it
if [ -d "C" ]; then
    echo "Deleting C directory..."
    rm -rf C
else
    echo "C directory does not exist."
fi

# Check if the Java directory exists and delete it
if [ -d "Java" ]; then
    echo "Deleting Java directory..."
    rm -rf Java
else
    echo "Java directory does not exist."
fi

# Check if the Cpp directory exists and delete it
if [ -d "Cpp" ]; then
    echo "Deleting Cpp directory..."
    rm -rf Cpp
else
    echo "Cpp directory does not exist."
fi

echo "Cleanup complete!"