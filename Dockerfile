FROM halohub/halo:2.20

ENV HALO_PORT=8090
ENV HALO_EXTERNAL_URL=""

EXPOSE 8090
VOLUME ["/root/.halo2"]
# 不要写CMD、不要写ENTRYPOINT，完全交给官方镜像原生启动脚本
