FROM tensorflow/tensorflow:2.8.0-gpu-jupyter

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y sudo && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
RUN useradd --create-home --shell /bin/bash --user-group --groups adm,sudo,audio,video,dialout user && \
    echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    echo "user:user" | chpasswd
RUN mkdir /.jupyter && chmod 777 /.jupyter && \
    mkdir /.cache && chmod 777 /.cache && \
    mkdir /.config && chmod 777 /.config
RUN python3 -m pip install jupyterlab pandas pillow
RUN python3 -m pip install keras_cv_attention_models

CMD [ "bash", "-c", "source /etc/bash.bashrc && /usr/local/bin/jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root" ]
