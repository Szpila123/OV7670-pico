FROM debian:latest

ARG EDITORPKG=vim

# Install all packages
RUN apt update && apt install --no-install-recommends -y\
    cmake gcc-arm-none-eabi gcc g++ libstdc++-arm-none-eabi-newlib libnewlib-arm-none-eabi\ 
    automake autoconf build-essential texinfo libtool libftdi-dev libusb-1.0-0-dev git\
    bash-completion python3

# Project directory should be mounted to pi-pico
RUN mkdir /var/pi-pico
WORKDIR /var/pi-pico

# Setup environment
ENV PICO_SDK_PATH="/var/pi-pico/pico-sdk"
