# Lrcat.rb
[![Build Status](https://travis-ci.org/maxmouchet/lrcat.rb.png?branch=master)](https://travis-ci.org/maxmouchet/lrcat.rb)
[![Code Climate](https://codeclimate.com/github/maxmouchet/lrcat.rb.png)](https://codeclimate.com/github/maxmouchet/lrcat.rb)
[![Gem Version](https://badge.fury.io/rb/lrcat.png)](http://badge.fury.io/rb/lrcat)

ActiveRecord mappings for the Lightroom Catalog.

**Project Status :** Paused. I may work on it later but I don't have the time for now.   

[Documentation](http://rubydoc.info/gems/lrcat/frames)

## Compatibility

#### Ruby
Lrcat.rb is currently compatible only with Ruby interpreters that supports C extensions because of the `sqlite3` gem.  
See [Add support for JRuby](https://github.com/maxmouchet/lrcat.rb/issues/1).

#### Lightroom
Currently I am working on the support of the Lightroom 5 (and future version) catalog.

## Installation

Add this line to your application's Gemfile:

    gem 'lrcat'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lrcat

## Usage

### Basic usage

```ruby
require 'lrcat'

# Open the catalog. (Please make a backup, this is experimental)
Lrcat::Catalog.open('Lightroom 5 Catalog.lrcat')

# Print the number of photos/camera model.
Lrcat::Catalog::CameraModel.all.each do |camera_model|
  puts "#{ camera_model.value } : #{ camera_model.images.count }"
end
```

### Get the available models
Currently all the models defined under lrcat/catalog/ are available. However in future versions, as more models are implemented, some may be unavailable depending on the version of the catalog.  
If you want to list the available models you can use `Catalog#get_models`:  
```ruby
Lrcat::Catalog.get_models
# => [:LibraryFile, :LibraryFolder, :LibraryRootFolder, :Image, :ExifMetadata, :AdditionalMetadata, :DevelopSettings, :Lens, :CameraModel, :CameraSerial]
```

### Get the available columns
To know which field you can get on a specific model you can use `ActiveRecord::Base#column_names`:
```ruby
Lrcat::Catalog::Lens.column_names
# => ["id_local", "searchIndex", "value"]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
