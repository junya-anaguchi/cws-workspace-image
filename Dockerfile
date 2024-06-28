# You can find the list of base images provided by Google Cloud
# https://cloud.google.com/workstations/docs/preconfigured-base-images?hl=ja
FROM us-central1-docker.pkg.dev/cloud-workstations-images/predefined/webstorm:latest	

SHELL [ "/bin/bash", "-c" ]

ENV NODE_VERSION 18.12.1
ENV PYTHON_VERSION 3.12.3
ENV TERRAFORM_VERSION 1.8.4-1

ENV NVM_DIR /usr/local/share/.nvm
ENV PYENV_ROOT /usr/local/share/.pyenv

COPY installer* /var/tmp/
COPY startup-add-env.sh /etc/profile.d/

# Install utilities
RUN /var/tmp/installer-utilities.sh

# Install nodejs
# (See this https://github.com/nvm-sh/nvm?tab=readme-ov-file#usage)
RUN /var/tmp/installer-node.sh ${NODE_VERSION} ${NVM_DIR}

# Install terraform
# (See this https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
RUN /var/tmp/installer-terraform.sh ${TERRAFORM_VERSION}

# Install python
RUN /var/tmp/installer-python.sh ${PYTHON_VERSION} ${PYENV_ROOT}
