#!/bin/bash
# Source: https://confluence.atlassian.com/plugins/viewsource/viewpagesrc.action?pageId=252348917
function shutdown()
{
    date
    echo "Shutting down Tomcat"
    # unset CATALINA_PID # Necessary in some cases
    # unset LD_LIBRARY_PATH # Necessary in some cases
    # unset JAVA_OPTS # Necessary in some cases

    /Home/metaMagic/Softwares/tc9/bin/catalina.sh stop
}

date
echo "Starting Apache Tomcat 9.0.2"

/Home/metaMagic/Softwares/tc9/bin/catalina.sh start

# Allow any signal which would kill a process to stop Tomcat
trap shutdown HUP INT QUIT ABRT KILL ALRM TERM TSTP

echo "Waiting for `cat $CATALINA_PID`"
wait `cat $CATALINA_PID`
