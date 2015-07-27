# == Schema Information
#
# Table name: content_sources
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class ContentSource < ActiveRecord::Base

  has_many :content_source_configurations, dependent: :destroy
  has_many :configurations, through: :content_source_configurations, dependent: :nullify
  validates_presence_of :title

  def to_s
    title
  end

end
