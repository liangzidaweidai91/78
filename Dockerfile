FROM halohub/halo:2.20

ENV HALO_PORT=8090
# 域名不要写在这里，到部署面板环境变量配置
ENV HALO_EXTERNAL_URL=""

EXPOSE 8090
VOLUME ["/root/.halo2"]

ENTRYPOINT ["/bin/bash", "-c", "java -jar /app/halo.jar --halo.external-url=${HALO_EXTERNAL_URL}"]
