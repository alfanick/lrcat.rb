require 'active_record'
require 'sqlite3'

require 'lrcat/catalog/library_file'
require 'lrcat/catalog/library_folder'
require 'lrcat/catalog/library_root_folder'

require 'lrcat/catalog/image'
require 'lrcat/catalog/exif_metadata'
require 'lrcat/catalog/additional_metadata'

require 'lrcat/catalog/develop_settings'

require 'lrcat/catalog/lens'
require 'lrcat/catalog/camera_model'
require 'lrcat/catalog/camera_serial'

module Lrcat

  # The Catalog module takes care of the ActiveRecord connection and
  # contains the ActiveRecord models.
  module Catalog

    # Establish the connection to the catalog.
    #
    # @param path [String] the path to the catalog file.
    def self.open(path)
      ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: path)
    end

    # Close the connection.
    def self.close
      ActiveRecord::Base.remove_connection
    end

  end
end
