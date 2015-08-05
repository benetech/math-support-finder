# == Schema Information
#
# Table name: capabilities
#
#  id                     :integer          not null, primary key
#  affordance_id          :integer
#  setup_id               :integer
#  verification_status_id :integer
#  created_at             :datetime
#  updated_at             :datetime
#
# Indexes
#
#  index_capabilities_on_affordance_id           (affordance_id)
#  index_capabilities_on_setup_id                (setup_id)
#  index_capabilities_on_verification_status_id  (verification_status_id)
#

class Capability < ActiveRecord::Base

  belongs_to :affordance
  belongs_to :setup
  belongs_to :verification_status

  validates_presence_of :affordance, :setup, :verification_status
  validates_associated :affordance, :setup, :verification_status
  #validates :setup_id, uniqueness: {scope: [:feature_id, :affordance_id]}
  validates_uniqueness_of :setup_id, :scope => [:affordance_id]

  def to_s
    [setup.to_s, affordance.to_s].join(" - ")
  end
end
