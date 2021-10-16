FROM registry.redhat.io/rhel8/postgresql-12:latest

USER 0
RUN yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm \
    && yum -y install postgis30_12
#    && dnf -y install dnf-plugins-core \
#    && dnf upgrade \
    

