class BrowserReader < ActiveRecord::Base
  has_many :browser_reader_versions, inverse_of: :browser_reader
  has_many :matrix_entries, through: :browser_reader_version
end

class BrowserReaderVersion < ActiveRecord::Base
  belongs_to :browser_reader, inverse_of: :browser_reader_versions
  has_many :matrix_entries, inverse_of: :browser_reader_version

  def title_with_version
    "#{browser_reader.title} #{version}"
  end
end

