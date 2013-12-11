module Lrcat
  module Catalog

    # DevelopSettings links to the Adobe_imageDevelopSettings table.
    #
    # The following columns are available in Lightroom 5:
    # - id_local
    # - allowFastRender
    # - beforeSettingsIDCache
    # - croppedHeight
    # - croppedWidth
    # - digest
    # - fileHeight
    # - fileWidth
    # - grayscale
    # - hasDevelopAdjustments
    # - hasDevelopAdjustmentsEx
    # - historySettingsID
    # - image
    # - processVersion
    # - settingsID
    # - snapshotID
    # - text
    # - validatedForVersion
    # - whiteBalance
    class DevelopSettings < ActiveRecord::Base
      self.table_name  = 'Adobe_imageDevelopSettings'
      self.primary_key = 'id_local'

      belongs_to :image, foreign_key: 'image'
    end

  end
end
