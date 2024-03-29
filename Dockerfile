# STEP:1 Ubuntu
FROM ubuntu:latest

# STEP:2 Nginx
RUN apt-get update && apt-get install -y -q nginx

# STEP:3 copy file
COPY index.html /usr/share/nginx/html/test

# STEP:4 Start Nginx
CMD ["nginx", "-g", "daemon off;"]

# STEP:5 Python3
FROM python:3
# STEP:6 Python3
WORKDIR /home/takachin/web
# STEP:7 Python3
COPY requirements.txt ./
# STEP:8 Python3
RUN pip install --no-cache-dir -r requirements.txt