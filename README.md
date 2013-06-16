# ColorConverter
[![Gem Version](https://badge.fury.io/rb/color-converter.png)](http://badge.fury.io/rb/color-converter)
[![Dependency Status](https://gemnasium.com/dkan/color-converter.png)](https://gemnasium.com/dkan/color-converter)
[![Coverage Status](https://coveralls.io/repos/dkan/color-converter/badge.png)](https://coveralls.io/r/dkan/color-converter)

ColorConverter is a simple way to convert between hexcolor, RGB, and CMYK values.

## Installation

Add this line to your application's Gemfile:

    gem 'color-converter'

And then execute:

    $ bundle install

## Usage:

    require 'color_converter'
    
    # Returns a hexcolor code string
    # e.g. "#FFFFFF"
    ColorConverter.hex(255, 255, 255)
    ColorConverter.hex(0, 0, 0, 0)
    
    # Returns an array of color values
    # e.g. [r, g, b]
    ColorConverter.rgb('#FFFFFF')
    ColorConverter.rgb(0, 0, 0, 0)
    
    # Returns an array of color values
    # e.g. [c, m, y, k]
    ColorConverter.cmyk('#000000')
    ColorConverter.cmyk(255, 255, 255)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
