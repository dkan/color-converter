# ColorConverter

ColorConverter is a simple way to convert between hexcolor, RGB, and CMYK values.

## Installation

Add this line to your application's Gemfile:

    gem 'color-converter'

And then execute:

    $ bundle install

## Usage

Convert to hexcolor example:

    # Returns a hexcolor code string
    # e.g. "#FFFFFF"
    ColorConverter.hex(255, 255, 255)
    ColorConverter.hex(0, 0, 0, 0)

Convert to RGB example:

    # Returns an array of color values
    # e.g. [r, g, b]
    ColorConverter.rgb('#FFFFFF')
    ColorConverter.rgb(0, 0, 0, 0)

Convert to CMYK example:

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
