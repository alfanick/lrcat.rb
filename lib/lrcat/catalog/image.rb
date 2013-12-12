module Lrcat
  module Catalog

    # Image links to the Adobe_images table.
    #
    # The following columns are available in Lightroom 5:
    # - id_local
    # - id_global
    # - aspectRatioCache
    # - bitDepth
    # - captureTime
    # - colorChannels
    # - colorLabels
    # - colorMode
    # - copyCreationTime
    # - copyName
    # - copyReason
    # - developSettingsIDCache
    # - fileFormat
    # - fileHeight
    # - fileWidth
    # - hasMissingSidecars
    # - masterImage
    # - orientation
    # - originalCaptureTime
    # - originalRootEntity
    # - panningDistanceH
    # - panningDistanceV
    # - pick
    # - positionInFolder
    # - propertiesCache
    # - pyramidIDCache
    # - rating
    # - rootFile
    # - sidecarStatus
    # - touchCount
    # - touchTime
    class Image < ActiveRecord::Base
      self.table_name  = 'Adobe_images'
      self.primary_key = 'id_local'

      belongs_to :library_file, foreign_key: 'rootFile'

      has_one :develop_settings,    foreign_key: 'image'
      has_one :exif_metadata,       foreign_key: 'image'
      has_one :additional_metadata, foreign_key: 'image'
    end

  end
end
