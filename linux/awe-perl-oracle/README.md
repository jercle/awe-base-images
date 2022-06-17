docker build -f ./linux/awe-perl-oracle/Dockerfile -t jercle/awe-perl-oracle:alpine-latest -t jercle/awe-perl-oracle:1.0.5 --no-cache .


docker push jercle/awe-perl-oracle -a
