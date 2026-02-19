FROM chriskm12/system-service:002
# Create a new user with UID 10014
RUN addgroup -g 10014 choreo && \
    adduser  --disabled-password  --no-create-home --uid 10014 --ingroup choreo choreouser
USER 10014

WORKDIR /opt/node

ENTRYPOINT ["./startde.sh"]

