FROM mysql:8.0.31

RUN microdnf install yum -y

RUN yum install vim -y