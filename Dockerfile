FROM postgres:12

# Create the needed temp file before the first postgreSQL execution

# RUN mkdir temp

# Create group and user
# RUN chgrp -R 0 /temp && \
#     chmod -R g=u /temp

RUN chown -R :26 /var/run/postgresql \
    && chmod -R 777 /var/run/postgresql

# Set user rights to allow the on-root-postgres-user 
# to access the temp folder


# VOLUME /temp/data

# Change to non-root privilege

