#!/bin/bash

# Check if the Cpp directory exists and delete it
if [ -d "Cpp" ]; then
    echo "Deleting Cpp directory..."
    rm -rf Cpp
else
    echo "Cpp directory does not exist."
fi

# Check if the Java directory exists and delete it
if [ -d "Java" ]; then
    echo "Deleting Java directory..."
    rm -rf Java
else
    echo "Java directory does not exist."
fi

# Check if the Python directory exists and delete it
if [ -d "Python" ]; then
    echo "Deleting Python directory..."
    rm -rf Python
else
    echo "Python directory does not exist."
fi

echo "Cleanup complete!"