FROM ubuntu:24.04

RUN apt update && \
    apt install -y openssh-server python3 sudo nginx && \
    mkdir /var/run/sshd

# Crear usuario ansible
RUN useradd -ms /bin/bash ansible && \
    echo 'ansible:ansible' | chpasswd && \
    adduser ansible sudo

# Copiar script de inicio
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 22 80

CMD ["/start.sh"]
