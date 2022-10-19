FROM registry.ds.digitwin.com.cn:5000/library/ffmpeg:4.2.4
WORKDIR /EasyDarwin
# copy files under EasyDarwin to /EasyDarwin folder
COPY ./EasyDarwin/ /EasyDarwin
EXPOSE 10008
EXPOSE 554
# K8S require running at frontend
CMD ./easydarwin
#CMD ["nohup", "./rtsp-relay", "&"]
#CMD ["sleep", "infinity"]
