class ContentSource < ActiveRecord::Base
  has_and_belongs_to_many :matrix_entries
end
