FROM ubuntu:22.04

# 環境変数設定（非対話モードでパッケージインストール）
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y wget git && \
    git clone https://github.com/shellspec/shellspec.git /opt/shellspec && \
    /opt/shellspec/install.sh --yes && \
    ln -s /root/.local/lib/shellspec/shellspec /usr/local/bin/shellspec && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# デフォルトコマンドをbashに設定
CMD ["bash"]
