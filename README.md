ntpdate Cookbook
================
Installs and configures the @ntpdate@.(Although it later uses the @ntpdate-debian@ binary)

Requirements
------------
Nothing really special. It depends on the official @cron@ cookbook
in order to lay the cronjob.

Attributes
----------
TODO: later, meanwhile see the attributes file.

e.g.
#### ntpdate::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ntpdate']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### ntpdate::default
TODO: later, meanwhile checkout the Vagrant file.

e.g.
Just include `ntpdate` in your node's `run_list`:

```json
{
  "name":"my_node",
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
Authors: Ivan Golman <ivan.golman@gmail.com>
