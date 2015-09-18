# == Schema Information
#
# Table name: features
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime
#  updated_at :datetime
#

class Feature < ActiveRecord::Base

  validates_presence_of :title

  has_many :affordances, dependent: :destroy
  has_many :outputs, through: :affordances

  after_touch :clear_association_cache

  validates_presence_of :title
  #default_scope { order(:title) }

  def to_s
    title
  end
end
