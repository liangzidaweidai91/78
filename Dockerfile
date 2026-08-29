FROM halohub/halo:2.20

EXPOSE 8090
VOLUME ["/root/.halo2"]
# 不写ENTRYPOINT，保留官方原生启动脚本
# 这里用ENV只设置JVM内存，不要放--开头的程序参数
ENV JAVA_OPTS="-Xmx512m"
