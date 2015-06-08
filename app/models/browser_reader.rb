class BrowserReader < ActiveRecord::Base
  has_many :matrixEntries, inverse_of: :browser_reader
  has_and_belongs_to_many :formats
  has_and_belongs_to_many :platforms
  has_and_belongs_to_many :browser_readers
end
