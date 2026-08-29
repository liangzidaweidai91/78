FROM halohub/halo:2.20

ENV JVM_OPTS="-Xmx512m"

WORKDIR /application
EXPOSE 8090
VOLUME ["/root/.halo2"]

# 恢复官方镜像原本的启动入口（关键！）
ENTRYPOINT ["sh", "-c", "exec java ${JVM_OPTS} -jar application.jar \"$@\""]
