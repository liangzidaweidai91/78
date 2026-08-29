FROM halohub/halo:2.20

ENV HALO_PORT=8090
ENV HALO_EXTERNAL_URL=""

EXPOSE 8090
VOLUME ["/root/.halo2"]

# 不要重写ENTRYPOINT！官方镜像已经写好启动逻辑
# 只使用CMD传参，追加外部url参数
CMD ["--halo.external-url=${HALO_EXTERNAL_URL}"]
