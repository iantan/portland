FROM airhacks/java
MAINTAINER iwt@topdanmark.dk

ENV SOAPUI_VERSION 5.1.2
ENV SOAPUI /opt/soapui
ENV SOAPUI_PROJECT soapui-mock-project.xml
ENV PROJECT_FILE /root/${SOAPUI_PROJECT}
ENV MOCKSERVICE_NAME SoegErhvervForsikringsaftalerMock
ENV MOCKSERVICE_PORT 8082
ENV MOCK_BIN mockservicerunner.sh

RUN curl -L -O http://s3.amazonaws.com/downloads.eviware/5.1.2/SoapUI-Pro-5.1.2-linux-bin.tar.gz && \
#RUN curl -L -O http://s3.amazonaws.com/downloads.eviware/soapuios/${SOAPUI_VERSION}/SoapUI-${SOAPUI_VERSION}-linux-bin.tar.gz && \
  tar -xzf SoapUI-Pro-${SOAPUI_VERSION}-linux-bin.tar.gz -C /opt/ && \
	mv /opt/SoapUI-Pro-5.1.2 ${SOAPUI} && \
  rm -f SoapUI-Pro-${SOAPUI_VERSION}-linux-bin.tar.gz

ENV PATH="$PATH:${SOAPUI}/bin"
COPY ${SOAPUI_PROJECT} /root/

ENTRYPOINT ${MOCK_BIN} -m "${MOCKSERVICE_NAME}" -p ${MOCKSERVICE_PORT} ${PROJECT_FILE}
EXPOSE ${MOCKSERVICE_PORT}