#!/bin/bash

echo "Content-type: text/html"
echo

shut_down(){
    /etc/init.d/httpd stop
}

restart(){
   /etc/init.d/httpd restart
}

# HTML header
echo "<!DOCTYPE html>"
echo "<html lang=\"en\">"
echo "<head>"
echo "      <meta charset=\"UTF-8\">"
echo "      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">"
echo "      <title>Main Menu</title>"
echo "</head>"
echo "<body>"
echo "   <h1>Main Menu</h1>"
echo "   <h3>Selected the page you want to go</h3>"
echo "    <ul>"
echo "      <li><a href=\"/scripts/monitoring.sh\">Monitoring</a></li>"
echo "      <li><a href=\"/scripts/logManager.sh\">Log Manager</a></li>"
echo "      <li><a href=\"/scripts/processMgmnt.sh\">Process Management</a></li>"
echo "      <li><a href=\"/scripts/userManagement.sh\">User Management</a></li>"
echo "      <li><a href=\"/scripts/packetFiltering.sh\">Packet Filtering</a></li>"
echo "      <li><a href=\"/scripts/managePreprTasks.sh\">Manage Preprogrammed Tasks</a></li>"
echo "      <li><a href=\"/scripts/automountMusicSearch.sh\">Search for Music in Drive</a></li>"
echo "    </ul>"
echo "   <pre style="width:30px;height:10px;border:1px solid;" onclick="echo "/etc/init.d/httpd stop"">Stop</pre>"
echo "   <pre style="width:30px;height:10px;border:1px solid;" onclick="echo "/etc/init.d/httpd restart"">Restart</pre>"
echo "</body>"
echo "</html>"
