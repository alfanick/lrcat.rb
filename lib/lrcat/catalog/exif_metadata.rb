module Lrcat
  module Catalog

    # ExifMetadata links to the AgHarvestedExifMetadata table.
    #
    # The following columns are available in Lightroom 5:
    # - id_local
    # - image
    # - aperture
    # - cameraModelRef
    # - cameraSNRef
    # - dateDay
    # - dateMonth
    # - dateYear
    # - flashFired
    # - focalLength
    # - gpsLatitude
    # - gpsLongitude
    # - gpsSequence
    # - hasGPS
    # - isoSpeedRating
    # - lensRef
    # - shutterSpeed
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
