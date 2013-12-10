module Lrcat
  module Catalog

    class LibraryFile < ActiveRecord::Base
      self.table_name  = 'AgLibraryFile'
      self.primary_key = 'id_local'

      belongs_to :library_folder, foreign_key: 'folder'
      
      has_one :image, foreign_key: 'rootFile'
    end

  end
end
