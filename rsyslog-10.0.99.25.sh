#!/usr/bin/env bash
sudo apt update
sudo apt install rsyslog
echo "*.* @10.0.99.25;RSYSLOG_SyslogProtocol23Format" | sudo tee /etc/rsyslog.d/90-gravwell.conf > /dev/null
echo rSyslog logging to 10.0.99.25 has been configured.
exit
