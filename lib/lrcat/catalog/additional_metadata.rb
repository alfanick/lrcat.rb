module Lrcat
  module Catalog

    # AdditionalMetadata links to the Adobe_AdditionalMetadata table.
    #
    # The following columns are available in Lightroom 5:
    # - id_local
    # - id_global
    # - additionalInfoSet
    # - embeddedXmp
    # - externalXmpIsDirty
    # - image
    # - incrementalWhiteBalance
    # - internalXmpDigest
    # - isRawFile
    # - lastSynchronizedHash
    # - lastSynchronizedTimestamp
    # - metadataPresetID
    # - metadataVersion
    # - monochrome
    # - xmp
    class AdditionalMetadata < ActiveRecord::Base
      self.table_name  = 'Adobe_AdditionalMetadata'
      self.primary_key = 'id_local'

      belongs_to :image, foreign_key: 'image'
    end

  end
end
