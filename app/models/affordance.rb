# == Schema Information
#
# Table name: affordances
#
#  id            :integer          not null, primary key
#  feature_id    :integer
#  technology_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#
# Indexes
#
#  index_affordances_on_feature_id     (feature_id)
#  index_affordances_on_technology_id  (technology_id)
#

class Affordance < ActiveRecord::Base
  has_many :setups, through: :capabilities
  has_many :capabilities, dependent: :destroy

  belongs_to :feature
  belongs_to :technology

  validates_presence_of :feature, :technology
  validates_associated :feature, :technology
  validates :feature_id, uniqueness: {scope: :technology_id}

  def to_s
    [technology.to_s, feature.to_s].join(" - ")
  end
end
