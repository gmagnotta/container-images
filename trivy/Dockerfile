# DOWNLOAD DB
FROM docker.io/aquasec/trivy@sha256:6a373529219e68abfd9badc2a2e41058215f586fe4dea54b92ca031e54e9167a as db

RUN trivy image --download-db-only

# DOWNLOAD DB
FROM docker.io/aquasec/trivy@sha256:6a373529219e68abfd9badc2a2e41058215f586fe4dea54b92ca031e54e9167a as javadb

RUN trivy image --download-java-db-only


# RUNTIME IMAGE
FROM docker.io/aquasec/trivy@sha256:6a373529219e68abfd9badc2a2e41058215f586fe4dea54b92ca031e54e9167a

USER root

COPY --from=db /root/.cache/trivy/db /cache/trivy/db/
COPY --from=javadb /root/.cache/trivy/java-db /cache/trivy/java-db/

RUN chown -R 0:0 /cache/ && \
    chmod 0777 -R /cache