# Lrcat.rb
[![Code Climate](https://codeclimate.com/github/maxmouchet/lrcat.rb.png)](https://codeclimate.com/github/maxmouchet/lrcat.rb)
[![Gem Version](https://badge.fury.io/rb/lrcat.png)](http://badge.fury.io/rb/lrcat)

ActiveRecord mappings for the Lightroom Catalog.

## Installation

Add this line to your application's Gemfile:

    gem 'lrcat'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lrcat

## Usage

```ruby
require 'lrcat'

# Open the catalog. (Please make a backup, this is experimental)
Lrcat::Catalog.open('Lightroom 5 Catalog.lrcat')

# Print the number of photos/camera model.
Lrcat::Catalog::CameraModel.all.each do |camera_model|
  puts "#{ camera_model.value } : #{ camera_model.images.count }"
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
