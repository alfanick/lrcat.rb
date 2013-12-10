module Lrcat
  module Catalog

    class Lens < ActiveRecord::Base
      self.table_name  = 'AgInternedExifLens'
      self.primary_key = 'id_local'

      has_many :exif_metadatas, foreign_key: 'lensRef'
      has_many :images, through: :exif_metadatas
    end

  end
end
