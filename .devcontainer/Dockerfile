FROM --platform=linux/amd64 ubuntu:22.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Update and install required packages
RUN apt-get update && apt-get install -y \
    gprolog \
    swi-prolog \
    git \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/*
