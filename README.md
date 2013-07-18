# SimpleFlashHelper

Simple Flash Helper is a Rails Flash Helper and Front-end Utility for handling flash messages dynamically.

## USAGE

### HTML Implementation

Usage is simple, just add `flash_helper` in your view, i.e.

    # HAML
    = flash_helper

    # ERB
    <%= flash_helper %>

This will automatically created a flash_helper div and add any and all flash messages there. It will use bootstrap classes like .alert .alert-success .alert-error, etc. If you're using bootstrap then it will be nicely stylized. 


### JavaScript Methods

You can also use the javascript helpers.
  
    // Create a new flash message with javascript
    flash_helper.create("message goes here!", "success");

You can also clear all of the flash message with:

    flash_helper.clear();



## Installation

Add this line to your application's Gemfile:

    gem 'simple_flash_helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_flash_helper


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
