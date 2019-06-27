#Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).
This change log follow the convention proposed by [Kepp a CHANGELOG](http://keepachangelog.com/).

## 0.1.0

### Added

- This changelog
- Semver
- All the user to define the path and name of the certificate to use.

### Changed

- Patched init script (to prevent sensu to start before redis &
  rabbitmq) on Debian are now optional but still activated by
  default.
- The playbook can now run with empty handlers and checks.
- Split Sensu configuration
- Replace the dashboard install with Uchiwa
- More explanation on how to uses this role

### Fixed

- When activated, the Debian patched init script are now forced even
  if Debian complain about previously existing files.
- Debian's patched init script are now weakly dependent on Redis &
  RabbitMQ server

## 0.2.0

### Changed

- Changed parameters for api, redis, rabbitmq to mach
- Set defaults for "host" to be 127.0.0.1
