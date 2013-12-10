module Lrcat
  module Catalog

    class CameraModel < ActiveRecord::Base
      self.table_name  = 'AgInternedExifCameraModel'
      self.primary_key = 'id_local'

      has_many :exif_metadatas, foreign_key: 'cameraModelRef'
      has_many :images, through: :exif_metadatas
    end

  end
end
