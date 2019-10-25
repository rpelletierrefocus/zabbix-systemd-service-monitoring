#!/bin/bash
chmod +x usr/local/bin/*
cp -r usr/local/bin/* /usr/local/bin/
cp -r service_* /etc/zabbix/
cp -r userparameter_systemd_services.conf /etc/zabbix/zabbix_agentd.d/
systemctl restart zabbix-agent
zabbix_agentd -t "systemd.service.discovery"
