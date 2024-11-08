# deb-build

## docker build
```bash
docker build -t ros2-deb-build .
```

## deb build
```bash
cd tmp
docker run -v $(pwd):/workspace -v $(pwd):/archives ros2-deb-build
```