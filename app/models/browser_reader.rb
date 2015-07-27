# == Schema Information
#
# Table name: browser_readers
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class BrowserReader < ActiveRecord::Base
  has_many :browser_reader_versions
  has_many :configurations
  validates_presence_of :title

  def to_s
    title
  end
end
