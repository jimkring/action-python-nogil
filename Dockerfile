FROM nogil/python

# avoids message -> "debconf: delaying package configuration, since apt-utils is not installed"
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

# WORKDIR /usr/src/app

# COPY requirements.txt ./
# RUN pip install -U --force-reinstall "https://github.com/Nuitka/Nuitka/archive/factory.zip"
# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]


