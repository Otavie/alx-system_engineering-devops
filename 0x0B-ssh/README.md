### 0x0B-ssh

#### Task 0: Use a private key

**File:** `0-use_a_private_key`

**Task Description:** Write a Bash script to connect to a server using SSH with a private key `~/.ssh/school` and user `ubuntu`, using single-character flags only.

---

#### Task 1: Create an SSH key pair

**File:** `1-create_ssh_key_pair`

**Task Description:** Write a Bash script to create an RSA key pair:
- Private key named `school`
- Key size of 4096 bits
- Protected by passphrase `betty`

---

#### Task 2: Client configuration file

**File:** `2-ssh_config`

**Task Description:** Configure the local SSH client's configuration file to:
- Use the private key `~/.ssh/school`
- Refuse authentication using a password

---

#### Task 3: Let me in!

**Task Description:** Add an SSH public key to the server so that connection is possible using the `ubuntu` user.

---

#### 4. Client configuration file (w/ Puppet)

**Task Description**: Use Puppet to configure the SSH client to use the private key `~/.ssh/school` and refuse password authentication.

**File**: `100-puppet_ssh_config.pp`

---
