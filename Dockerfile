FROM postgres:12

# Create the needed temp file before the first postgreSQL execution

RUN mkdir temp

# Create group and user

RUN groupadd -g 1000 postgrestest
RUN useradd -M -u 1000 -g 1000 postgrestest

# Set user rights to allow the on-root-postgres-user 
# to access the temp folder

RUN chown -R postgrestest:postgrestest /temp

VOLUME /temp/data

# Change to non-root privilege

USER postgrestest
