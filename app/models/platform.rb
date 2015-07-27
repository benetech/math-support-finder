# == Schema Infile_formation
#
# Table name: platforms
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Platform < ActiveRecord::Base
  has_many :platform_versions, dependent: :destroy
  has_many :setups, through: :platform_versions

  def to_s
    title
  end

  def versions
    platform_versions
  end

end
