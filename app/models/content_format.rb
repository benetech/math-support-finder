class ContentFormat < ActiveRecord::Base
  has_many :matrix_entries, inverse_of: :content_format
  has_and_belongs_to_many :browser_readers
end
