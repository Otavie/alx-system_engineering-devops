### 0x08. Networking basics #1

This directory contains Bash scripts related to basic networking concepts and tasks.

### Scripts

#### 0-change_your_home_IP

This script configures an Ubuntu server to meet the following requirements:

- `localhost` resolves to `127.0.0.2`.
- `facebook.com` resolves to `8.8.8.8`.

**Requirements:**
- Ensure that `localhost` resolves to `127.0.0.2`.
- Ensure that `facebook.com` resolves to `8.8.8.8`.

**Note:** 
The checker is running on Docker, so ensure to follow the provided guidelines.

#### 1-show_attached_IPs

This script displays all active IPv4 IPs on the machine it’s executed on.

**Note:** 
Ensure the script is executed on a machine with active network interfaces.

#### 2-port_listening_on_localhost

This script listens on port 98 on localhost.

**Note:** 
Ensure that port 98 is not already in use by another application or service.

### Usage

To use these scripts, simply execute them in a Bash-compatible environment. Ensure proper permissions are set to allow execution.

```bash
./0-change_your_home_IP
./1-show_attached_IPs
./2-port_listening_on_localhost
```
