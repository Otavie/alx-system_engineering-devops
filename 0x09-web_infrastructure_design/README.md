# 0x09. Web Infrastructure Design

This repository contains tasks focused on designing web infrastructures using different setups. Each task involves creating a web infrastructure that hosts a website and explaining various components and issues related to the infrastructure. The tasks progress from a simple single-server setup to more complex, distributed, and secured setups.

## Tasks

### 0. Simple Web Stack
A simple web infrastructure powered by a single server with a LAMP stack.

#### Requirements:
- 1 server
- 1 web server (Nginx)
- 1 application server
- 1 application files (your code base)
- 1 database (MySQL)
- 1 domain name (foobar.com) configured with a www record pointing to your server IP (8.8.8.8)

#### Specifics to Explain:
- What is a server?
- The role of the domain name.
- The type of DNS record for www in www.foobar.com.
- The role of the web server.
- The role of the application server.
- The role of the database.
- How the server communicates with the user's computer requesting the website.
- Issues with this infrastructure:
  - Single Point of Failure (SPOF)
  - Downtime during maintenance (e.g., restarting the web server when deploying new code)
  - Scalability issues with high incoming traffic

#### File:
- `0-simple_web_stack`

### 1. Distributed Web Infrastructure
A web infrastructure with three servers to host the website www.foobar.com.

#### Requirements:
- 2 additional servers
- 1 web server (Nginx)
- 1 application server
- 1 load-balancer (HAProxy)
- 1 set of application files (your code base)
- 1 database (MySQL)

#### Specifics to Explain:
- The reason for adding each additional element.
- The load balancer distribution algorithm and its working.
- Whether the load balancer is configured for an Active-Active or Active-Passive setup, and the difference between the two.
- How a Primary-Replica (Master-Slave) database cluster works.
- The difference between the Primary node and the Replica node concerning the application.
- Issues with this infrastructure:
  - Single Points of Failure (SPOF)
  - Security issues (e.g., no firewall, no HTTPS)
  - Lack of monitoring

#### File:
- `1-distributed_web_infrastructure`

### 2. Secured and Monitored Web Infrastructure
A secured and monitored web infrastructure with three servers hosting the website www.foobar.com, serving encrypted traffic.

#### Requirements:
- 3 firewalls
- 1 SSL certificate to serve www.foobar.com over HTTPS
- 3 monitoring clients (data collector for Sumologic or other monitoring services)

#### Specifics to Explain:
- The reason for adding each additional element.
- The purpose of firewalls.
- The importance of serving traffic over HTTPS.
- The purpose of monitoring.
- How the monitoring tool collects data.
- Steps to monitor your web server's Queries Per Second (QPS).
- Issues with this infrastructure:
  - Terminating SSL at the load balancer level and its implications.
  - The problem with having only one MySQL server capable of accepting writes.
  - The problem with having servers with all the same components (database, web server, and application server).

#### File:
- `2-secured_and_monitored_web_infrastructure`

### 3. Scale Up
Scaling up the infrastructure by adding an additional server and load balancer, and splitting components across dedicated servers.

#### Requirements:
- 1 additional server
- 1 load-balancer (HAProxy) configured as a cluster with the other one
- Separate servers for each component (web server, application server, database)

#### Specifics to Explain:
- The reason for adding each additional element.

#### File:
- `3-scale_up`
