# mydevmachine-cookbook

A chef cookbook that I use to configure my development machine.

## Supported Platforms

Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['mydevmachine']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### mydevmachine::default

Include `mydevmachine` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[mydevmachine::default]"
  ]
}
```

## License and Authors

Author:: Giovanni Toraldo (<me@gionn.net>)
