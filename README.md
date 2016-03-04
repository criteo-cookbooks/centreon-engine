# centreon-engine

This cookbook will install and configure centreon engine.
It has 2 recipes :

- centreon-engine::repo (Configure YUM repositories)
- centreon-engine::server_package (install centreon-engine)

## Requirements
* Chef 12

## Cookbook dependencies
* sudo
* yum


## Platform
The release is tested on:

* CentOS 6.X

## usage

```ruby
include_recipe 'centreon-engine::default'
```
