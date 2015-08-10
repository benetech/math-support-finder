# == Schema Information
#
# Table name: outputs
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Output < ActiveRecord::Base
  validates_presence_of :title

  has_many :affordances, dependent: :destroy
  has_many :capabilities, through: :affordances

  def to_s
    title
  end
end
