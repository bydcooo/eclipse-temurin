FROM eclipse-temurin:8-jdk-ubi10-minimal

# 1. 安装 EPEL 仓库配置包
# 2. 安装 ffmpeg
# 3. 清理缓存以减小镜像体积
RUN microdnf install -y epel-release && \
    microdnf install -y ffmpeg && \
    microdnf clean all
