FROM halohub/halo:2.20

ENV JAVA_OPTS="-Xmx512m"
EXPOSE 8090
VOLUME ["/root/.halo2"]

# 恢复官方镜像原本的启动入口
ENTRYPOINT ["/opt/halo/bin/halo"]
