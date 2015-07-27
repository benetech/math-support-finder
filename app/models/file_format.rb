# == Schema Infile_formation
#
# Table name: file_formats
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class FileFormat < ActiveRecord::Base

  has_many :configurations, dependent: :nullify

  validates_presence_of :title

  def to_s
    title
  end
end
