docker build -t 21jun/hf-gpu-user -f Dockerfile.hf-gpu-user .

docker run -v ~/develop:/home/lee1jun/develop -p 35555:22 --name LEMON --gpus all -it --ipc=host 21jun/hf-gpu-user

docker run -v ~/develop:/home/lee1jun/develop:z -v /mnt/hdd/lee1jun:/data:z -p 55555:22 --name PEACH --gpus all -it --ipc=host 21jun/hf-gpu-user

docker attach LEMON
-- in the container --
```sh
service ssh start
passwd lee1jun 
```
