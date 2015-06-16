class Status < ActiveRecord::Base
  has_many :matrix_entries, inverse_of: :status
end
