class AssistiveTechnology < ActiveRecord::Base
  belongs_to :platform, inverse_of: :assistive_technologies
  has_many :matrix_entries, inverse_of: :assistive_technology
end
