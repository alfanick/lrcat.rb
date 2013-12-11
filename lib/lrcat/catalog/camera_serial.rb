module Lrcat
  module Catalog

    # CameraSerial links to the AgInternedExifCameraSN table.
    #
    # The following columns are available in Lightroom 5:
    # - id_local
    # - searchIndex
    # - value
    class CameraSerial < ActiveRecord::Base
      self.table_name  = 'AgInternedExifCameraSN'
      self.primary_key = 'id_local'

      has_many :exif_metadatas, foreign_key: 'cameraSNRef'
      has_many :images, through: :exif_metadatas
    end

  end
end
