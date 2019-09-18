FROM amazonlinux:2

RUN yum update -y && \
    yum install -y less which mariadb-server procps sudo && \
    curl https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm -o amazon-ssm-agent.rpm && \
    yum install -y ./amazon-ssm-agent.rpm && \
    cp /etc/amazon/ssm/seelog.xml.template /etc/amazon/ssm/seelog.xml && \
    rm -f ./amazon-ssm-agent.rpm && \
    ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
