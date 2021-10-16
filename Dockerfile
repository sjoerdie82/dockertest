FROM registry.redhat.io/rhel8/postgresql-12:latest

USER 0
RUN yum -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm \
    && dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \  
    && dnf install dnf-plugins-core \
    && dnf config-manager --set-enabled PowerTools \
    && dnf -qy module disable postgresql \
    && yum install postgis25_12
