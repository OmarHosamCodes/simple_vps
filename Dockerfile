FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y wget curl ca-certificates && \
    wget -O /usr/local/bin/gotty https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_amd64.tar.gz && \
    tar -xzf /usr/local/bin/gotty -C /usr/local/bin && \
    chmod +x /usr/local/bin/gotty

# Expose the port Railway will provide
EXPOSE 8080

# Start gotty, binding to all interfaces and using bash
CMD ["gotty", "--port", "8080", "--permit-write", "--once", "bash"]