#!/bin/bash

if ! [ -d "venv" ]; then
    echo "Creating virtual environment..."
    python -m venv venv
else
    echo "Virtual environment detected!"
fi


echo "Activating virtual environment..."
source ./venv/Scripts/activate.bat

echo "Installing dependencies..."

pip install -r requirements.txt

echo "Done!"
