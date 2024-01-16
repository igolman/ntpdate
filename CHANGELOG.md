ntpdate CHANGELOG
=================

1.6.0
-----

- added support for chef `v18`

1.5.1
-----

- no functional changes. Bump version to conform supermarket requirements.
- added TESTING.md file.

1.5.0
-----

- added support chef `v17` and `Ubuntu 22.04`

1.4.1
-----

- configured `github actions`.
- added tests reporting.

1.4.0
-----

- added support chef `v15` and `v16`
- `kitchen` test suite switched to `dokken/inspec`
- some code linting done.
- EOL `foodcritic` removed.

1.3.0
-----

- `cron` cookbook's dependency updated.
- `kitchen` test suite added.
- support Chef `v13` and `v14` tested.
- `cookstyle` linter applied.

1.2.1
-----

- foodcritic compliance made.

1.2.0
-----

- `node[:ntpdate][:enable]` control directive added. Default is `true`.

1.1.0
-----

- NTP package leads to race condition on port. Will be removed by deafult, unless `node[:ntpdate][:ntp_pkg_remove]` directive is set to *false*

1.0.1
-----

- Cronjob stdout to `/dev/null`

1.0.0
-----

- Ready for the first release.

0.1.0
-----

- Initial release of ntpdate
