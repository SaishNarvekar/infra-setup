#!/bin/bash

# update system
apt update && apt upgrade -y

# install basics
apt install -y curl git build-essential

# install Ollama
curl -fsSL https://ollama.com/install.sh | sh

# start service
systemctl enable ollama
systemctl start ollama

# pull your model
ollama pull qwen2.5:3b
