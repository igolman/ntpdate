ntpdate Cookbook
================
Installs and configures the `ntpdate`.(Although it later uses the `ntpdate-debian` binary, see `man ntpdate`)

Requirements
------------
Nothing really special. It depends on the opscode's *cron* cookbook
in order to lay the cronjob.

Attributes
----------
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ntpdate']['use_ntp_config']</tt></td>
    <td>String</td>
    <td>whether to use the ntp.conf file config</td>
    <td><tt>no</tt></td>
  </tr>
    <tr>
    <td><tt>['ntpdate']['config_folder']</tt></td>
    <td>String</td>
    <td>Where lays the config file</td>
    <td><tt>/etc/default</tt></td>
  </tr>
  <tr>
    <td><tt>['ntpdate']['config_file']</tt></td>
    <td>String</td>
    <td>Config file name</td>
    <td><tt>ntpdate</tt></td>
  </tr>
  <tr>
    <td><tt>['ntpdate']['ntp_servers']</tt></td>
    <td>StringArray</td>
    <td>Which time servers to sync from.</td>
    <td><tt>%w(pool.ntp.org)</tt></td>
  </tr>
  <tr>
    <td><tt>['ntpdate']['ntp_options']</tt></td>
    <td>String</td>
    <td>Additional options for ntpdate</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['ntpdate']['package_name']</tt></td>
    <td>StringArray</td>
    <td>Which packages to install</td>
    <td><tt>%w(ntpdate)</tt></td>
  </tr>
  <tr>
    <td><tt>['ntpdate']['crontab_file']</tt></td>
    <td>String</td>
    <td>Crontab file name to create in /etc/cron.d directory</td>
    <td><tt>ntpdate</tt></td>
  </tr>
</table>

For the `[:ntpdate][:crontab]` directives check the *cron* cookbook from *opscode*.

Usage
-----
#### ntpdate::default

```json
{
  "name":"my_node",
  "ntpdate": {
  	"ntp_servers": %w{ntp1.somedomain.com ntp2.somedomain.com},
  	"crontab": {
  		"comment": "This Cron sets time on Sundays at 6:00 O'clock",
  		"minute": '0',
  		"hour":   '6',
  		"day":    '7'
  	}
  },
  "run_list": [
    "recipe[ntpdate]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Ivan Golman (<ivan.golman@gmail.com>)
