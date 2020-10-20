FROM ubuntu:20.04 as with-secrets
RUN echo Image without secrets

# install utility dependencies
RUN apt-get update && apt-get install -y \
      curl \
      unzip && \
      rm -rf /var/lib/apt/lists/*

# install aws cli dependency
RUN curl -LsS "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
      unzip awscliv2.zip && \
      ./aws/install && \
      aws --version && \
      rm -f "awscliv2.zip"

# copy over the scripts we want to run
COPY *.sh /usr/local/bin/
