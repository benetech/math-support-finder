class BrowserReader < ActiveRecord::Base
  has_many :matrix_entries, inverse_of: :browser_reader
  has_and_belongs_to_many :content_formats
  has_and_belongs_to_many :platforms
end
