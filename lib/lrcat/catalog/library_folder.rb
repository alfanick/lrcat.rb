module Lrcat
  module Catalog

    class LibraryFolder < ActiveRecord::Base
      self.table_name  = 'AgLibraryFolder'
      self.primary_key = 'id_local'

      belongs_to :library_root_folder, foreign_key: 'rootFolder'

      has_many :library_files, foreign_key: 'folder'
    end

  end
end
