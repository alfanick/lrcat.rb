module Lrcat
  module Catalog

    class Image < ActiveRecord::Base
      self.table_name  = 'Adobe_images'
      self.primary_key = 'id_local'

      belongs_to :library_file, foreign_key: 'rootFile'

      has_one :develop_settings, foreign_key: 'image'
      has_one :exif_metadata,    foreign_key: 'image'
    end

  end
end
