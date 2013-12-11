module Lrcat
  module Catalog

    # LibraryFile links to the AgLibraryFile table.
    #
    # The following columns are available in Lightroom 5:
    # - id_local
    # - id_global
    # - baseName
    # - errorMessage
    # - errorTime
    # - extension
    # - externalModTime
    # - folder
    # - idx_filename
    # - importHash
    # - lc_idx_filename
    # - lc_idx_filenameEx
    # - md5
    # - modTime
    # - originalFilename
    # - sidecarExtensions
    class LibraryFile < ActiveRecord::Base
      self.table_name  = 'AgLibraryFile'
      self.primary_key = 'id_local'

      belongs_to :library_folder, foreign_key: 'folder'

      has_one :image, foreign_key: 'rootFile'
    end

  end
end
