FROM eclipse-temurin:8-jdk-ubi10-minimal

# 下载并解压静态版 ffmpeg
RUN microdnf install -y tar xz && \
    curl -L https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz | tar -xJ && \
    mv ffmpeg-*-amd64-static/ffmpeg /usr/local/bin/ && \
    mv ffmpeg-*-amd64-static/ffprobe /usr/local/bin/ && \
    rm -rf ffmpeg-*-amd64-static && \
    microdnf remove -y tar xz && \
    microdnf clean all
