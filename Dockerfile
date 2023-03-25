FROM ubuntu:18.04
RUN apt update && apt install -y curl lsb-release gnupg software-properties-common
RUN cd /tmp
COPY gns3-remote-install.sh $PWD
RUN bash -x gns3-remote-install.sh --with-iou --with-i386-repository
RUN apt install -y locales
RUN apt install qemu-kvm libvirt-daemon-system
RUN sed -i '/en_ZA.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen
ENV LANG en_ZA.UTF-8  
ENV LANGUAGE en_ZA:en  
ENV LC_ALL en_ZA.UTF-8     
CMD /usr/bin/gns3server
