docker build -f ./linux/awe-perl-base/Dockerfile -t jercle/awe-perl-base:alpine-latest -t jercle/awe-perl-base:1.0.5 --no-cache .

docker push jercle/awe-perl-base -a
