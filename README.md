# OpenNebula fixed context files

These scripts configure the virtual machine according to OpenNebula context. They are based on the
original vmcontext scripts by OpenNebula.

1. IPv6 configuration was fixed
2. /etc/hostname is not touched unless it is empty
3. SSH host keys are genearted unless they exist (only Ed25519 and RSA 4096bit)
4. Hostname is configured before host keys are generated, so the comment in the pubkeys is correct
5. Deploy context public keys to the "ubuntu" user, which is going to be removed after the machine
   was bootstrapped correctly
6. Use resolvconf attributes to set dns-nameservers and dns-search


## Installation

```shell
make install
```

## TODO

Add systemd service. This is not provided by OpenNebula upstream yet, therefore skipping it for now.
