FROM dokken92/dolfinx_custom:19032021

# create user with a home directory
ARG NB_USER
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

# Copy home directory for usage in binder
WORKDIR ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
RUN pip3 install jupyterhub nbconvert

USER ${NB_USER}
ENTRYPOINT []