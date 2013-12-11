module Lrcat
  module Catalog

    # LibraryRootFolder links to the AgLibraryRootFolder table.
    #
    # The following columns are available in Lightroom 5:
    # - id_local
    # - id_global
    # - absolutePath
    # - name
    # - relativePathFromCatalog
    class LibraryRootFolder < ActiveRecord::Base
      self.table_name  = 'AgLibraryRootFolder'
      self.primary_key = 'id_local'

      has_many :library_folders, foreign_key: 'rootFolder'
    end

  end
end
