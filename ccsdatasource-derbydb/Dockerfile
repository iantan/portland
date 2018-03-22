FROM airhacks/derbydb
MAINTAINER Ian Tan
ENV CLASSPATH=/$INSTALL_DIR/${VERSION}-bin/lib/derby.jar:$INSTALL_DIR/${VERSION}-bin/lib/derbytools.jar:.
ADD init.sql init.sql
RUN java -Dij.protocol=jdbc:derby: -Dij.database='/dbs/DKTODB2C;create=true' org.apache.derby.tools.ij init.sql