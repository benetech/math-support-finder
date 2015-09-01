# == Schema Information
#
# Table name: affordances
#
#  id         :integer          not null, primary key
#  feature_id :integer
#  output_id  :integer
#  created_at :datetime
#  updated_at :datetime
#  notes      :text
#
# Indexes
#
#  index_affordances_on_feature_id  (feature_id)
#  index_affordances_on_output_id   (output_id)
#

class Affordance < ActiveRecord::Base
  has_many :setups, through: :capabilities
  has_many :capabilities, dependent: :destroy

  belongs_to :feature
  belongs_to :output

  validates_presence_of :feature, :output
  validates_associated :feature, :output
  validates :feature_id, uniqueness: {scope: :output_id}

  scope :sorted, -> { joins(:feature, :output).order("outputs.title asc, features.title asc" ) }

  def to_s
    [output.to_s, feature.to_s].join(" – ")
  end
end
