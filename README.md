# firewall-toolkit
A set of bash commands to manage iptables with a host running Docker 

Since Docker will add their own rules to iptables you need to change how to add rules for Docker containers.

Docker provides the chain: `DOCKER_USER` which will be evaluated before any other Docker related iptables rules. This is where any of your rules needs to go.

The script: `ban-ip.sh` is a convenience script for running the command `iptables -I DOCKER-USER -s [IP_TO_BAN] -j REJECT`

## Usage

Ban a single IP Address
```sh
$ ./ban-ip.sh 45.142.120.209
```

Ban a range of IP Address. E.g. all 45.x.x.x
```sh
$ ./ban-ip.sh 45.0.0.0/8
```
