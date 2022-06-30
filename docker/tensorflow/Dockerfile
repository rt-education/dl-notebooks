FROM tensorflow/tensorflow:2.8.0-gpu-jupyter

# Update the CUDA Linux GPG Repository Key
# https://github.com/NVIDIA/nvidia-docker/issues/1631#issuecomment-1112828208
RUN rm /etc/apt/sources.list.d/cuda.list && \
    rm /etc/apt/sources.list.d/nvidia-ml.list && \
    apt-key del 7fa2af80 && \
    apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub && \
    apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/7fa2af80.pub
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y sudo && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
RUN useradd --create-home --shell /bin/bash --user-group --groups adm,sudo,audio,video,dialout user && \
    echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    echo "user:user" | chpasswd
RUN mkdir /.jupyter && chmod 777 /.jupyter && \
    mkdir /.cache && chmod 777 /.cache && \
    mkdir /.config && chmod 777 /.config
RUN python3 -m pip install jupyterlab pandas pillow scipy sklearn seaborn
RUN python3 -m pip install keras_cv_attention_models

CMD [ "bash", "-c", "source /etc/bash.bashrc && /usr/local/bin/jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root" ]
