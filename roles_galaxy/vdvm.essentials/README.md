# Ansible Role: Essentials

Installs essential packages

## Supported platforms

```
CentOS 6 & 7
Ubuntu 14.04
```

## Role Variables

(OPTIONAL) Define a custom list of packages to install:

```
essentials_packages:
[...]
```

(OPTIONAL) Define a custom list of services to start and enable:

```
essentials_start_enable:
[...]
```

## Dependencies

None

## Example Playbook

```
- hosts: servers
  roles:
    - { role: vdvm.essentials }
```

## License

MIT / BSD

## Author Information

Created by [Attila van der Velde](https://github.com/vdvm)
