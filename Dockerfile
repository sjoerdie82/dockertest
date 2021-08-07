FROM postgres:12

# Create the needed temp file before the first postgreSQL execution

RUN mkdir temp

# Create group and user
# RUN chgrp -R 0 /temp && \
#     chmod -R g=u /temp

RUN groupadd -g 1000 postgrestest \
    && useradd -M -u 1000 -g 1000 postgrestest \
    && chown -R postgrestest:postgrestest /temp \
    && chmod -R 777 /temp

# Set user rights to allow the on-root-postgres-user 
# to access the temp folder


# VOLUME /temp/data

# Change to non-root privilege

USER postgrestest
