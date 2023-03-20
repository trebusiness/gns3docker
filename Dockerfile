FROM debian
RUN su -
RUN apt update && apt install -y python3-pip python3-pyqt5 python3-pyqt5.qtsvg python3-pyqt5.qtwebsockets qemu qemu-kvm qemu-utils libvirt-clients libvirt-daemon-system virtinst expect
RUN apt install -y xtightvncviewer apt-transport-https ca-certificates curl gnupg2 software-properties-common
COPY wire.sh wire.exp $PWD
RUN chmod +x wire.sh && chmod +x wire.exp
RUN expect wire.exp
