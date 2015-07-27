# == Schema Infile_formation
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

  has_many :content_source_setups, dependent: :destroy
  has_many :setups, through: :content_source_setups

  validates_presence_of :title

  def to_s
    title
  end

end