class AssistiveTechnology < ActiveRecord::Base
  belongs_to :platform, inverse_of: :assistive_technologies
  has_many :matrixEntries, inverse_of: :assistive_technology
end
