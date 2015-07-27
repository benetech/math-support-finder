# == Schema Information
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

  has_many :configurations, through: :capabilities

  validates_presence_of :title

  def to_s
    title
  end
end
