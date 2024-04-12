# alpine-openssh-client

用于在容器中执行 ssh 相关命令，主要用来 Gitlab 流水线等场景。

## 打镜像并上传 Dockerhub
```shell
# 执行前 docker login 成功
./build.sh
```

## 使用

https://hub.docker.com/r/chf007/alpine-openssh-client

```shell
docker pull chf007/alpine-openssh-client
```

