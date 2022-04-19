FROM tensorflow/tensorflow:2.8.0-gpu-jupyter

RUN python3 -m pip install jupyterlab

CMD [ "bash", "-c", "source /etc/bash.bashrc && /usr/local/bin/jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root" ]
