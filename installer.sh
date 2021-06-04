#!/bin/bash
sudo useradd --no-create-home mongodb_exporter
wget https://github.com/percona/mongodb_exporter/releases/download/v0.7.1/mongodb_exporter-0.7.1.linux-amd64.tar.gz
tar xzf mongodb_exporter-0.7.1.linux-amd64.tar.gz
sudo rm mongodb_exporter-0.7.1.linux-amd64.tar.gz
sudo mv mongodb_exporter-0.7.1.linux-amd64  /usr/local/bin/mongodb_exporter
sudo cp mongodb-exporter.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable mongodb-exporter
sudo systemctl start  mongodb-exporter
sudo systemctl status mongodb-exporter