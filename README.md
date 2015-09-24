ntpdate Cookbook
================
Installs `ntpdate` and configures it to run as a scheduled job.(Although it later uses the `ntpdate-debian` binary, see `man ntpdate`).
The reason for this one may found after struggling to sync the time via NTP daemon without exposing the external network interface to the world.

Requirements
------------
Nothing really special. It depends on the opscode's *cron* cookbook in order to lay the cronjob.

Attributes
----------
|Key|Type|Description|Default|
| ------ | :-------: | ---------- | :---------:|
|['ntpdate']['use\_ntp\_config']|String|whether to use the ntp.conf file config|'no'|
|['ntpdate']['config_folder']|String|Where lays the config file|'/etc/default'|
|['ntpdate']['config_file']|String|Config file name|'ntpdate'|
|['ntpdate']['ntp_servers']|StringArray|Which time servers to sync from|%w(pool.ntp.org)|
|['ntpdate']['ntp_options']|String|Additional options for ntpdate|nil|
|['ntpdate']['package_name']|StringArray|Which packages to install|%w(ntpdate)|
|['ntpdate']['crontab_file']|String|Crontab file name to create in /etc/cron.d directory|ntpdate|

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
  		"minute": "0",
  		"hour":   "6",
  		"day":    "7"
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
