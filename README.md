# Autoremote
[![Licence](https://img.shields.io/badge/license-MIT-blue.svg)][licence]
[![Gem Version](http://img.shields.io/gem/v/autoremote.svg)][gem]
[![Dependency Status](http://img.shields.io/gemnasium/AltonV/autoremote.svg)][gemnasium]
[![Gem Downloads](https://img.shields.io/gem/dt/autoremote.svg)][gem]
[![Code Climate](https://codeclimate.com/github/AltonV/autoremote/badges/gpa.svg)][codeclimate]

[licence]: http://choosealicense.com/licenses/mit/
[gem]: https://rubygems.org/gems/autoremote
[gemnasium]: https://gemnasium.com/AltonV/autoremote
[bitdeli]: https://bitdeli.com/free "Bitdeli Badge"
[codeclimate]: https://codeclimate.com/github/AltonV/autoremote

A library that makes it easier to interact with your other autoremote devices.  
This project incudes both a library and an executable that uses the library.

Devices are saved with sqlite3 in ~/.autoremote/devices.db

If you don't know how to get your personal key [follow this link](http://joaoapps.com/autoremote/personal/)

## Installation

    $ gem install autoremote

## Usage

### Executable
    $ autoremote add NAME KEY            Save device
    $ autoremote remove NAME             Removes device
    $ autoremote delete NAME             Same as above
    $ autoremote list [WITHKEY]          Lists all devices. Displays keys if WITHKEY equals to true, t, yes, y, ja, j or 1
    $ autoremote message NAME MESSAGE    Send a message to a device
    $ autoremote register NAME HOST      Register this computer to the device

### Library

```ruby
require 'autoremote'

# This will save a device for use later
AutoRemote.addDevice( name, key )

# Removes a device
AutoRemote.removeDevice( name )

# List all saved devices
AutoRemote.list

# Send a message to a device
# The parameter device can either be a Device object or the name of the device
AutoRemote.sendMessage( device, message )

# Register on the device.
# This has the same effect as following the guide on http://joaoapps.com/autoremote/linux/)
# device can either be a Device object or the name of the device
# host can be either a hostname or ip-address, but they have to be public (i.e. reachable from the internet)
AutoRemote.registerOnDevice( device, host )
```

## Contributing

1. Fork it ( https://github.com/AltonV/autoremote/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
