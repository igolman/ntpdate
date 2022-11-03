ntpdate CHANGELOG
=================

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
- support Chef v13 and v14 tested.
- `cookstyle` linter applied.

1.2.1
-----
- foodcritic compliance made.

1.2.0
-----
- *node[:ntpdate][:enable]* control directive added. Default is `true`.

1.1.0
-----
- NTP package leads to race condition on port. Will be removed by deafult, unless *node[:ntpdate][:ntp\_pkg\_remove]* directive is set to *false*

1.0.1
-----
- Cronjob stdout to /dev/null

1.0.0
-----
- Ready for the first release.

0.1.0
-----
- Initial release of ntpdate

---
Check the [Markdown Syntax Guide](http://daringfireball.net/projects/markdown/syntax) for help with Markdown.

The [Github Flavored Markdown page](http://github.github.com/github-flavored-markdown/) describes the differences between markdown on github and standard markdown.
