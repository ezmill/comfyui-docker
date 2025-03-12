#!/bin/bash

# This file will be sourced in init.sh
# Stripped down version that skips all downloads but keeps essential initialization

# APT and PIP Packages - keeping these empty
APT_PACKAGES=()
PIP_PACKAGES=()

# Empty arrays for models and nodes - no downloads will occur
NODES=()
CHECKPOINT_MODELS=()
UNET_MODELS=()
LORA_MODELS=()
VAE_MODELS=()
ESRGAN_MODELS=()
CONTROLNET_MODELS=()

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    if [[ ! -d /opt/environments/python ]]; then 
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    # Just print essentials and skip all downloads
    provisioning_print_header
    printf "Skipping all model and node downloads...\n"
    provisioning_print_end
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#   Skipping all downloads for shared vol   #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
}

function provisioning_print_end() {
    printf "\nProvisioning complete: Web UI will start now\n\n"
}

# Start the process
provisioning_start
