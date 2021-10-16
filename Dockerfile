FROM registry.redhat.io/rhel8/postgresql-12:latest

USER 0
RUN dnf -y install dnf-plugins-core \
    && dnf -y upgrade \
    && dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \  
    && dnf config-manager --set-enabled powertools \
    && dnf -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm \
    && dnf -qy module disable postgresql \
    && yum -y install postgis25_12
#    && dnf -y install dnf-plugins-core \
#    && dnf upgrade \
    

