# 直接继承官方镜像，不做任何修改，不覆盖ENTRYPOINT
FROM halohub/halo:2.20

EXPOSE 8090
VOLUME ["/root/.halo2"]
# ⚠️这里不要写ENTRYPOINT，不要写CMD！保留镜像原始启动脚本！
