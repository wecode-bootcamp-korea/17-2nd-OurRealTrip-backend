#!/bin/sh
#make virtual_environment
echo y | conda create -n ourrealtrip python=3.8 && conda activate ourrealtrip
#install dependency_packages
pip install -r requirements.txt
#make_database
python manage.py migrate
#upload_dependency_data
python db_uploader.py
#find_server_IPAddress
echo "your_server_IP_address"
echo  | ipconfig getifaddr en0
#runserver_finally
python manage.py runserver 0:8000
