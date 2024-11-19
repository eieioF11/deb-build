# deb-build

# build
## docker build
```bash
docker build -t ros2-deb-build .
```
```bash
docker build --platform linux/amd64 -t ros2-deb-build .
```

## deb build
```bash
cd tmp
docker run -v $(pwd):/workspace -v $(pwd):/archives ros2-deb-build
```

# Use ARM64 emulator
## Install
```bash
sudo apt-get install qemu-user-static
```
## Build
```bash
docker build --platform linux/arm64 -t ros2-deb-build_aarch64 .
```
## check
```bash
docker run -it ros2-deb-build_aarch64 /bin/bash
```
```bash
root@ef22a347026a:/workspace# uname -a
Linux ef22a347026a 6.8.0-48-generic #48~22.04.1-Ubuntu SMP PREEMPT_DYNAMIC Mon Oct  7 11:24:13 UTC 2 aarch64 aarch64 aarch64 GNU/Linux
```
## deb build
```bash
cd tmp
docker run -v $(pwd):/workspace -v $(pwd):/archives ros2-deb-build_aarch64
```

# Bash
```bash
docker run -it ros2-deb-build /bin/bash
```

