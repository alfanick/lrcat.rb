module Lrcat
  module Catalog

    # Lens links to the AgInternedExifLens table.
    #
    # The following columns are available in Lightroom 5:
    # - id_local
    # - searchIndex
    # - value
    class Lens < ActiveRecord::Base
      self.table_name  = 'AgInternedExifLens'
      self.primary_key = 'id_local'

      has_many :exif_metadatas, foreign_key: 'lensRef'
      has_many :images, through: :exif_metadatas
    end

  end
end
