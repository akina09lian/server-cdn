FROM chriskm12/system-service:002

# Create a new user with UID 10014
RUN groupadd -g 10014 choreo && \
    useradd -u 10014 -g choreo -M -s /usr/sbin/nologin choreouser

USER 10014

WORKDIR /opt/node

ENTRYPOINT ["ls"]

