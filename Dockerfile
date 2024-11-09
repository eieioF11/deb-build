FROM ros:humble

RUN apt update && apt install -y \
  curl \
  python3-bloom \
  python3-rosdep \
  fakeroot \
  debhelper \
  dh-python \
  && apt clean && rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://eieiof11.github.io/ppa/ppa.key -o /usr/share/keyrings/f11_ppa.gpg \
  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/f11_ppa.gpg] https://eieiof11.github.io/ppa $(. /etc/os-release && echo $UBUNTU_CODENAME) main" \
  > /etc/apt/sources.list.d/f11_ppa.list \
  && echo "yaml https://eieiof11.github.io/ppa/rosdep.yaml" > /etc/ros/rosdep/sources.list.d/99-f11_ppa.list

WORKDIR /workspace

COPY entrypoint.sh /

CMD [ "/entrypoint.sh" ]
