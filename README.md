# dashing

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with dashing](#setup)
    * [What dashing affects](#what-dashing-affects)
    * [Beginning with dashing](#beginning-with-dashing)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module installs dashing. The exceptionally handsome dashboard framework in Ruby and Coffeescript.

## Module Description

This module installs dashing via rubygems, and starts the service. 

This is the first commit and should be considered work in progress.
It should hopefully get better. Please feel free to submit PR's and issues.

## Setup

### What dashing affects

* Installs the dashing gem and all required gems via bundler
* Creates an init script in /etc/init.d
* Starts a service called dashing on port 8080 by default.

### Beginning with dashing

```puppet
  include dashing
```

## Usage



## Reference

###Classes

####Public Classes

* `dashing`: Main class, manages the installation of dashing

###Parameters

#####`service`: The name of the dashing service. defaults to 'dashing'.
#####`user`: The user to run/install dashing as, defaults to 'dashing'.
#####`group`: The group to run/install dashing as, defaults to 'dashing'.
#####`homedir`: The home directory of the user.
#####`port`: The port to run dashing on.

## Limitations

This module is tested on Raspbian (Debian Wheezy).

## Development

Please feel free to raise any issues here for bug fixes. We also welcome feature requests. Feel free to make a pull request for anything and we make the effort to review and merge. We prefer with tests if possible.

## Release Notes/Contributors/Etc

Merritt Krakowitzer
