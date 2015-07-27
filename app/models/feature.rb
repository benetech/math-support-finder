# == Schema Infile_formation
#
# Table name: features
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Feature < ActiveRecord::Base

  validates_presence_of :title

  has_many :capabilities, dependent: :destroy
  has_many :setups, through: :capabilities

  def to_s
    title
  end
end
