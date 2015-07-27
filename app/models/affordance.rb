# == Schema Infile_formation
#
# Table name: affordances
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Affordance < ActiveRecord::Base

  has_many :setups, through: :capabilities

  validates_presence_of :title

  has_many :capabilities, dependent: :destroy
  has_many :setups, through: :capabilities

  def to_s
    title
  end
end
