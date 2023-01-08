```
docker build -t 21jun/hf-gpu-user -f Dockerfile.hf-gpu-user .

docker run -v ~/develop:/home/lee1jun/develop -p 35555:22 --name LEMON --gpus all -it --ipc=host 21jun/hf-gpu-user

docker run -v ~/develop:/home/lee1jun/develop:z -v /mnt/hdd/lee1jun:/data:z -p 55555:22 --name PEACH --gpus all -it --ipc=host 21jun/hf-gpu-user
```

docker attach LEMON
-- in the container --
```sh
service ssh start
passwd lee1jun 
```


# Matching UID and GID for container user

1. check UID/GID for user at host.
2. config UID/GID inside container

host
```
id
>>> uid=1001(lee1jun) gid=1001(lee1jun) groups=1001(lee1jun),999(docker)
```
container (as root)
```
usermod -u 1001 lee1jun
groupmod -g 1001 lee1jun
```



# Install Anaconda
```
wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
```
