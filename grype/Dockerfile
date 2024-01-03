# DOWNLOAD DB
FROM docker.io/anchore/grype@sha256:bc18b9e289687e97cec052e65c3b83d4872af331fdbb5102e2aafd70fc19aa59 as db

ENV GRYPE_DB_AUTO_UPDATE=false\
    GRYPE_DB_VALIDATE_AGE=false

RUN ["/grype", "db", "update" ]
