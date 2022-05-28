#!/usr/bin/env bash
sudo apt update
sudo apt install rsyslog
sudo echo "*.* @10.0.99.25;RSYSLOG_SyslogProtocol23Format" >> /etc/rsyslog.d/90-gravwell.conf
echo rSyslog logging to 10.0.99.25 has been configured.
exit
