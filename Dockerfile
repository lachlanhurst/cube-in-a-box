FROM opendatacube/jupyter

USER root

RUN pip3 install matplotlib click scikit-image pep8 ruamel.yaml

RUN pip3 install Pillow moviepy

RUN pip3 install https://github.com/martinchristen/pyRT/archive/master.zip --upgrade

USER $NB_UID

WORKDIR /notebooks

CMD jupyter notebook
