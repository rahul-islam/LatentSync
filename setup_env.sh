#!/bin/bash

# Create a new conda environment
conda create -y -n latentsync python=3.10.13
conda activate latentsync

# Install ffmpeg
conda install -y -c conda-forge ffmpeg


# Python dependencies
pip install -r requirements.txt

# OpenCV dependencies
# sudo apt -y install libgl1
conda install -y -c conda-forge libgl

# For GLIBCXX_3.4.32 Error
conda install -y -c conda-forge libstdcxx-ng

# Download the checkpoints required for inference from HuggingFace
huggingface-cli download ByteDance/LatentSync-1.6 whisper/tiny.pt --local-dir checkpoints
huggingface-cli download ByteDance/LatentSync-1.6 latentsync_unet.pt --local-dir checkpoints