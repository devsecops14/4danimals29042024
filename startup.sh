#!/bin/bash

# Run script to create database
python create_sql_db_using_python.py

exec "$@"
# Run the Flask application
#python3 app.py --host=0.0.0.0 --port=8080


