class MatrixEntry < ActiveRecord::Base
  belongs_to :assistive_technology, inverse_of: :matrix_entries
  belongs_to :browser_reader, inverse_of: :matrix_entries
  belongs_to :format, inverse_of: :matrix_entries
  belongs_to :platform, inverse_of: :matrix_entries
  belongs_to :renderer, inverse_of: :matrix_entries
  has_many :affordances, inverse_of: :matrix_entry
  has_many :comments, inverse_of: :matrix_entry
  has_many :media_attachments, inverse_of: :matrix_entry
  has_and_belongs_to_many :content_sources
end
