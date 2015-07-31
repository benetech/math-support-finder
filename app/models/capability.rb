# == Schema Infile_formation
#
# Table name: capabilities
#
#  id                     :integer          not null, primary key
#  feature_id             :integer
#  affordance_id          :integer
#  setup_id               :integer
#  verification_status_id :integer
#  created_at             :datetime
#  updated_at             :datetime
#
# Indexes
#
#  index_capabilities_on_affordance_id           (affordance_id)
#  index_capabilities_on_feature_id              (feature_id)
#  index_capabilities_on_setup_id                (setup_id)
#  index_capabilities_on_verification_status_id  (verification_status_id)
#

class Capability < ActiveRecord::Base

  belongs_to :feature
  belongs_to :affordance
  belongs_to :setup
  belongs_to :verification_status

  validates_presence_of :feature, :affordance, :setup, :verification_status
  validates_associated :feature, :affordance, :setup, :verification_status
  #validates :setup_id, uniqueness: {scope: [:feature_id, :affordance_id]}
  validates_uniqueness_of :setup_id, :scope => [:feature_id, :affordance_id]

  def to_s
    "Capability " + id.to_s
  end
end
