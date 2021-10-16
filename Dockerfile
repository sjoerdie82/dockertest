FROM registry.redhat.io/rhel8/postgresql-12:latest

USER 0
RUN dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && \
    dnf -y install dnf-plugins-core && \
    dnf config-manager --set-disabled ubi-8-appstream && \
    dnf -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
    dnf -y install http://mirror.centos.org/centos/8/AppStream/aarch64/os/Packages/libtiff-4.0.9-18.el8.aarch64.rpm && \
    dnf -y install postgis30_12
    

    
#RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \
#    && yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm \
#    && yum install -y https://download.postgresql.org/pub/repos/yum/12/redhat/rhel-8-x86_64/postgresql12-contrib-12.5-1PGDG.rhel8.x86_64.rpm
##    && dnf -qy module disable postgresql \
#    && yum repolist \
#    && yum -y install postgis30_12 --nobest
##    && dnf -y install dnf-plugins-core \
##    && dnf upgrade \
#    yum install -y https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/h/hdf5-1.10.5-4.el8.x86_64.rpm && \
#    yum install -y https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/x/xerces-c-3.2.2-3.el8.x86_64.rpm && \

