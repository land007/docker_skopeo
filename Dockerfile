FROM alpine:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk add --no-cache skopeo bash
ADD 1.crt /tmp
RUN cat /tmp/1.crt  >> /etc/ssl/certs/ca-certificates.crt

CMD bash

#docker build -t land007/skopeo:latest .
#docker run -it --name skopeo land007/skopeo:latest

#https://github.com/butzist/copy-docker-image/blob/master/entrypoint.sh
#skopeo copy --src-tls-verify=false --dest-tls-verify=false "${PARAMS[@]}"

#https://github.com/containers/skopeo
#http://docx.***.com:5080/v2/_catalog
#skopeo login docx.***.com:5000
#skopeo inspect docker://docx.***.com:5000/http-proxy:latest
#skopeo inspect docker://docx.***.com:5000/n2n-edge:latest
#
#{
#    "Name": "docx.***.com:5000/n2n-edge",
#    "Digest": "sha256:af900012c44861b732eb9118d50831e7b36087e061ae12d9f2568524d37ea5f2",
#    "RepoTags": [
#        "latest"
#    ],
#    "Created": "2020-10-09T15:05:47.2027711Z",
#    "DockerVersion": "",
#    "Labels": null,
#    "Architecture": "amd64",
#    "Os": "linux",
#    "Layers": [
#        "sha256:8e097b52bfb8e743e52ccd2dfbd5a0363e48a00b06cdd3728a6fd4d1f3a34280",
#        "sha256:a613a9b4553ca86fac22546f2f79e2ff3d17d8d6aeea8b97d67862a5a40ad8ec",
#        "sha256:acc000f015361df35e770a910ce03d30691e35aa10d52f4a4f432f183a6c03db",
#        "sha256:73eef93b7466c41f22f32d28aae5eb87e1ebc0c4d232c5f5e68c955d0e798dca",
#        "sha256:db3d51df2fb3d48d6e79b61827ad776cced4b6bc704409beeba913bd1e4dd1bf",
#        "sha256:4345ac7b9cac7acb3e57104505c65bb544d0bd48ffb3aecbd7b27b9991e569dc",
#        "sha256:0d852635881fe5640f7af67f9a118f5f86897eed3ab59765d38a6749b64a0f76",
#        "sha256:9f0d2d782191fb120fb5314d215c461ad1c7b3647690f06c59eb42fc8c87b055",
#        "sha256:69093083537026d329847f13e74153bbfd854e7c75e96390c5eb2d7341c42961",
#        "sha256:91108a5f129b59ca20fa66fe01d3f1d4e015c28beec61a8466f7f979245360c3",
#        "sha256:bac4c4809141d7e10fb529c6917253c84d375bc5f28844f7e671e7444f52a3ab",
#        "sha256:7f1e8c79f1cda7ebcf22b5274216dd99054fee0bca1f7798d980c5ee2200503d",
#        "sha256:76027a604eb49b9b9d01bbda96ee9cd7a4f6d61cd5b09ccd4da0f666e97e6df3",
#        "sha256:44daa6c8904583b3cbcfe9a57aa1aa7fea4d133e4581ff2a8568c58cbb0effd8",
#        "sha256:acc4410e1d6afab818a9ac8d2d167ef70a918d92bf4c7e14b377ee337410bac0",
#        "sha256:a5bf20b65e2e37a5d852bbf6fcfc8d7a4c69bb82932ee8c7e990481f1490aca1",
#        "sha256:b809f792a2f0c36e45b63c4d1f28079b972ec58c4c3f53176f5a3376ef0781a4"
#    ],
#    "Env": [
#        "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
#        "DEBIAN_FRONTEND=noninteractive",
#        "LC_ALL=zh_CN.UTF-8",
#        "TZ=Asia/Shanghai",
#        "GROUP=openwrt",
#        "KEY=1234567",
#        "IP=192.168.11.110",
#        "MASK=255.255.255.0",
#        "CONNECT=127.0.0.1:30151"
#    ]
#}
