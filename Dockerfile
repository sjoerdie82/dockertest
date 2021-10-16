FROM registry.redhat.io/rhel8/postgresql-12:latest

USER 0
RUN yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm \
    && yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \
    && dnf -qy module disable postgresql \
    && yum repolist \
    && yum -y install postgis30_12 --nobest
#    && dnf -y install dnf-plugins-core \
#    && dnf upgrade \
    

