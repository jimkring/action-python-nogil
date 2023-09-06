FROM nogil/python

# avoids message -> "debconf: delaying package configuration, since apt-utils is not installed"
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install python3-dev

RUN mkdir htmlcov && chmod ugo+rwx htmlcov

# Copy entrypoint into docker container and make it executable
COPY entrypoint.sh /entrypoint.sh
RUN chmod ug+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
