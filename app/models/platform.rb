class Platform < ActiveRecord::Base
  has_many :matrix_entries, inverse_of: :platform
  has_and_belongs_to_many :browser_readers
end
