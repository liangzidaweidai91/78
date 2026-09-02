FROM halohub/halo:2.26.0
ENV TZ=Asia/Shanghai
# 小实例低CPU优化参数：小堆内存 + 串行GC + 限制JVM线程数量，防止疯狂吃CPU
ENV JAVA_OPTS="-Xms128m -Xmx256m -XX:+UseSerialGC -XX:ParallelGCThreads=1 -XX:ConcGCThreads=1 -XX:CICompilerCount=2"
ENV HALO_SECURITY_REDIRECT=true
ENV SERVER_FORWARD=true
ENV LOGGING_LEVEL_IO_R2DBC_H2=ERROR
# 降低框架日志输出，减少CPU打印日志开销
ENV LOGGING_ROOT_LEVEL=WARN
VOLUME ["/root/.halo2"]
EXPOSE 8090
