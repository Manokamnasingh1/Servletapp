FROM tomcat:9.0.109
COPY target/HelloServletApp.war /usr/local/tomcat/webapps/ROOT.war
