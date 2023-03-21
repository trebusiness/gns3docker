FROM ubuntu:18.04
RUN apt update && apt install -y curl lsb-release gnupg software-properties-common
#RUN apt install -y expect 
#COPY lsb.sh lsb.exp $PWD
#RUN expect lsb.exp
RUN cd /tmp
COPY gns3-remote-install.sh $PWD
RUN bash -x gns3-remote-install.sh --with-iou --with-i386-repository
#RUN apt update && apt install -y software-properties-common
#RUN add-apt-repository ppa:gns3/ppa && apt update
#RUN apt install -y gns3-gui gns3-server
#RUN dpkg --add-architecture i386
#RUN apt update && apt install -y gns3-iou
#RUN apt install -y apt-transport-https ca-certificates curl
#RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
#RUN add-apt-repository \
#"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable"
#RUN apt update && apt install -y docker-ce
##RUN usermod -aG ubridge $USER
