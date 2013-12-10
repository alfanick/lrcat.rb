module Lrcat
  module Catalog

    class ExifMetadata < ActiveRecord::Base
      self.table_name  = 'AgHarvestedExifMetadata'
      self.primary_key = 'id_local'

      belongs_to :image,         foreign_key: 'image'
      belongs_to :camera_model,  foreign_key: 'cameraModelRef'
      belongs_to :camera_serial, foreign_key: 'cameraSNRef'
      belongs_to :lens,          foreign_key: 'lensRef'
    end

  end
end
