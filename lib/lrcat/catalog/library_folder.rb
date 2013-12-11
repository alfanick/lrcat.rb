module Lrcat
  module Catalog

    # LibraryFolder links to the AgLibraryFolder table.
    #
    # The following columns are available in Lightroom 5:
    # - id_local
    # - id_global
    # - pathFromRoot
    # - rootFolder
    class LibraryFolder < ActiveRecord::Base
      self.table_name  = 'AgLibraryFolder'
      self.primary_key = 'id_local'

      belongs_to :library_root_folder, foreign_key: 'rootFolder'

      has_many :library_files, foreign_key: 'folder'
    end

  end
end
