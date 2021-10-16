FROM bitnami/postgresql:12-debian-10

# Create the needed temp file before the first postgreSQL execution

# RUN mkdir temp

# Create group and user
# RUN chgrp -R 0 /temp && \
#     chmod -R g=u /temp

# RUN chown -R 1000620000:0 /var/run/postgresql \
#     && chmod -R 2777 /var/run/postgresql

USER 0
RUN apt update \
    && apt-get -y install gnupg2 wget \    
    && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
    && echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" | tee  /etc/apt/sources.list.d/pgdg.list \
    && apt-get -y install postgis postgresql-12-postgis-3
#    && sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt xenial-pgdg main" >> /etc/apt/sources.list' \
#    && wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add - 
#    && apt-get -y install postgresql-12-postgis-3.0 
USER 1001    
# Set user rights to allow the on-root-postgres-user 
# to access the temp folder


# VOLUME /temp/data

# Change to non-root privilege
