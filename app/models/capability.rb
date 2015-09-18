# == Schema Information
#
# Table name: capabilities
#
#  id                  :integer          not null, primary key
#  affordance_id       :integer
#  setup_id            :integer
#  created_at          :datetime
#  updated_at          :datetime
#  verification_status :boolean          default(FALSE)
#
# Indexes
#
#  index_capabilities_on_affordance_id  (affordance_id)
#  index_capabilities_on_setup_id       (setup_id)
#

class Capability < ActiveRecord::Base

  belongs_to :affordance, touch: true
  belongs_to :setup, touch: true

  validates_presence_of :affordance, :setup
  validates_associated :affordance, :setup
  #validates :setup_id, uniqueness: {scope: [:feature_id, :affordance_id]}
  validates_uniqueness_of :setup_id, :scope => [:affordance_id]

  default_scope { order('verification_status desc') }


  def to_s
    [setup.to_s, affordance.to_s].join(" – ")
  end

  def verification_text
    if verification_status 
      "Verified"
    else
      "Not Verified"
    end
  end
end
