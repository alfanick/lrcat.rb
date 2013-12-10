module Lrcat
  module Catalog

    class LibraryRootFolder < ActiveRecord::Base
      self.table_name  = 'AgLibraryRootFolder'
      self.primary_key = 'id_local'

      has_many :library_folders, foreign_key: 'rootFolder'
    end

  end
end
