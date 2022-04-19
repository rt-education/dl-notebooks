FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-runtime

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y sudo libopencv-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
RUN useradd --create-home --shell /bin/bash --user-group --groups adm,sudo,audio,video,dialout user && \
    echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    echo "user:user" | chpasswd
RUN python3 -m pip install jupyterlab ipywidgets scikit-image matplotlib opencv-python pandas seaborn && \
    /opt/conda/bin/jupyter nbextension enable --py widgetsnbextension

RUN mkdir /.local && chmod 777 /.local && \
    mkdir /.cache && chmod 777 /.cache

CMD [ "bash", "-c", "source /etc/bash.bashrc && /opt/conda/bin/jupyter lab --notebook-dir=/workspace --ip 0.0.0.0 --no-browser --allow-root" ]
