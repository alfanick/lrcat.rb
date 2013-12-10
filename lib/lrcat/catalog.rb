require 'active_record'
require 'sqlite3'

require 'lrcat/catalog/library_file'
require 'lrcat/catalog/library_folder'
require 'lrcat/catalog/library_root_folder'

require 'lrcat/catalog/image'
require 'lrcat/catalog/exif_metadata'
require 'lrcat/catalog/develop_settings'

require 'lrcat/catalog/lens'
require 'lrcat/catalog/camera_model'
require 'lrcat/catalog/camera_serial'

module Lrcat
  module Catalog

    def self.open(path)
      ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: path)
    end

    def self.close
      # TODO: Close the connection ?
    end

  end
end
