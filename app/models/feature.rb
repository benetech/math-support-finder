class Feature < ActiveRecord::Base
  belongs_to :affordance, inverse_of: :features
end
