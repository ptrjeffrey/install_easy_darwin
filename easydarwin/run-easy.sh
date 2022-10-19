CONTAINER=easy
IMAGE=ptrjeffrey/easy-darwin
docker stop ${CONTAINER}
docker rm ${CONTAINER}
docker run -itd \
--name ${CONTAINER} \
-p 30000:10008 \
-p 3554:554 \
-v ${PWD}/EasyDarwin/easydarwin.ini:/EasyDarwin/easydarwin.ini \
-v /root/nginx/data/html/video/:/Users/ze/Downloads \
${IMAGE}
