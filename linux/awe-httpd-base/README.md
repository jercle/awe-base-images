docker build -f ./linux/awe-httpd-base/Dockerfile -t jercle/awe-httpd-base:alpine-latest -t jercle/awe-httpd-base:1.0.5 --no-cache .


docker push jercle/awe-httpd-base -a
