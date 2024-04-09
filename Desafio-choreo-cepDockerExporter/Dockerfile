ARG BASE_IMAGE
FROM wso2/wso2mi:4.0.1-SNAPSHOT-centos
#FROM ${BASE_IMAGE}/wso2/wso2mi-centos:1.2.0.82-centos
#FROM wso2/wso2mi

COPY CompositeApps/*.car ${WSO2_SERVER_HOME}/repository/deployment/server/carbonapps/
COPY Resources/wso2carbon.jks ${WSO2_SERVER_HOME}/repository/resources/security/wso2carbon.jks
COPY Resources/client-truststore.jks ${WSO2_SERVER_HOME}/repository/resources/security/client-truststore.jks
COPY deployment.toml $WSO2_SERVER_HOME/conf

# LIBs
#COPY --chown=wso2carbon:wso2 Libs/*.jar $WSO2_SERVER_HOME/lib/
#

USER root
RUN chgrp -R 0 /home/wso2carbon/ && \
chmod -R g=u /home/wso2carbon/

USER 1001
