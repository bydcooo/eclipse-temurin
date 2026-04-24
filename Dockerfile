FROM eclipse-temurin:8-jdk-ubi10-minimal

# 1. 安装 epel-release
# 2. 安装 rpmfusion-free 仓库 (这是提供 ffmpeg 的源)
# 3. 安装 ffmpeg
# 4. 清理以减小镜像体积
RUN microdnf install -y epel-release && \
    microdnf install -y https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-10.noarch.rpm && \
    microdnf install -y ffmpeg && \
    microdnf clean all
