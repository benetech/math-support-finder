class Affordance < ActiveRecord::Base
  has_many :features, inverse_of: :affordance
  has_many :matrix_entries, inverse_of: :affordance
end
