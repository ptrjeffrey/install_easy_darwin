docker stop myng
docker rm myng
docker run --name myng -p 23456:9000 \
-p 23457:80 \
-v ${PWD}/data:/usr/share/nginx \
-v ${PWD}/log:/var/log/nginx/ \
-v ${PWD}/conf/nginx.conf:/etc/nginx/nginx.conf \
-v ${PWD}/conf/conf.d/:/etc/nginx/conf.d/ \
--privileged=true \
-d docker.io/nginx:1.21
