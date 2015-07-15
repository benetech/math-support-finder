# == Schema Information
#
# Table name: capabilities
#
#  id                     :integer          not null, primary key
#  feature_id             :integer
#  affordance_id          :integer
#  configuration_id       :integer
#  verification_status_id :integer
#  created_at             :datetime
#  updated_at             :datetime
#
# Indexes
#
#  index_capabilities_on_affordance_id           (affordance_id)
#  index_capabilities_on_configuration_id        (configuration_id)
#  index_capabilities_on_feature_id              (feature_id)
#  index_capabilities_on_verification_status_id  (verification_status_id)
#

class Capability < ActiveRecord::Base

  belongs_to :feature
  belongs_to :affordance
  belongs_to :configuration
  belongs_to :verification_status
end
