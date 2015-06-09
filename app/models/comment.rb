class Comment < ActiveRecord::Base
  belongs_to :matrix_entry, inverse_of: :comments
end
