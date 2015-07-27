# == Schema Information
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

  has_many :configurations, through: :capabilities

  def to_s
    title
  end
end
