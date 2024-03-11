# # FROM public.ecr.aws/privado/privado:latest as privado
# # WORKDIR /privado
# FROM nestybox/ubuntu-jammy-systemd-docker as privado
# RUN apt-get update -y && apt-get install --no-install-recommends -y zip git wget locate
# # Clone the BankingSystem-Backend repository to scan
# WORKDIR /privado
# RUN wget https://github.com/Privado-Inc/privado-cli/releases/download/v2.2.9/privado-linux-amd64.tar.gz
# RUN ls
# RUN tar -xvf privado-linux-amd64.tar.gz -C /privado
# RUN ls
# WORKDIR /
# # RUN git clone https://github.com/saurabh-sudo/BankingSystem-Backend.git
# # Set the WORKDIR to the cloned repository
# # WORKDIR /BankingSystem-Backend
# # Run Privado scan on the BankingSystem-Backend repository
# # CMD ["privado", "scan", "--debug", "."]
# # RUN /privado/privado scan --debug .
# 

FROM golang:1.21.6@sha256:5f5d61dcb58900bc57b230431b6367c900f9982b583adcabf9fa93fd0aa5544a as privado
RUN apt-get update -y && apt-get install --no-install-recommends -y git 
WORKDIR /
RUN git clone https://github.com/Privado-Inc/privado-cli.git privado
WORKDIR /privado
RUN go build -o privado
