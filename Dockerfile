#
# Debian Jessie Desktop (MATE) Dockerfile with QGIS
#
# https://github.com/DigitalGlobe/debian-desktop 
#

# Pull base image.
FROM debian:buster

# Install MATE and VNC server.
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install --fix-missing -y mate-desktop-environment-core tightvncserver && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]

# Expose ports.
EXPOSE 5901

RUN mkdir /root/.vnc && echo "debian" | vncpasswd -f > /root/.vnc/passwd && chmod 600 /root/.vnc/passwd
