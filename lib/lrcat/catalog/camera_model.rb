module Lrcat
  module Catalog

    # CameraModel links to the AgInternedExifCameraModel table.
    #
    # The following columns are available in Lightroom 5:
    # - id_local
    # - searchIndex
    # - value
    class CameraModel < ActiveRecord::Base
      self.table_name  = 'AgInternedExifCameraModel'
      self.primary_key = 'id_local'

      has_many :exif_metadatas, foreign_key: 'cameraModelRef'
      has_many :images, through: :exif_metadatas
    end

  end
end
