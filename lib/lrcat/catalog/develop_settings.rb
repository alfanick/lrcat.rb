module Lrcat
  module Catalog

    class DevelopSettings < ActiveRecord::Base
      self.table_name  = 'Adobe_imageDevelopSettings'
      self.primary_key = 'id_local'

      belongs_to :image, foreign_key: 'image'
    end

  end
end
