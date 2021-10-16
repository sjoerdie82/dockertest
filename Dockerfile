FROM registry.redhat.io/rhel8/postgresql-12:latest

USER 0
RUN yum -y module enable postgresql:12 && \
    yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
    yum install -y https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/h/hdf5-1.10.5-4.el8.x86_64.rpm && \
    INSTALL_PKGS="postgis30_12" && \ 
    yum -y --setopt=tsflags=nodocs install $INSTALL_PKGS
    

    
#RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \
#    && yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm \
#    && yum install -y https://download.postgresql.org/pub/repos/yum/12/redhat/rhel-8-x86_64/postgresql12-contrib-12.5-1PGDG.rhel8.x86_64.rpm
##    && dnf -qy module disable postgresql \
#    && yum repolist \
#    && yum -y install postgis30_12 --nobest
##    && dnf -y install dnf-plugins-core \
##    && dnf upgrade \
    

