FROM ros:humble

RUN apt update && apt install -y \
  curl \
  python3-bloom \
  python3-rosdep \
  fakeroot \
  debhelper \
  dh-python \
  && apt clean && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

COPY entrypoint.sh /

CMD [ "/entrypoint.sh" ]
