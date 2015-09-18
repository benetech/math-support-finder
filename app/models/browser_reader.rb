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
  has_many :browser_reader_versions, dependent: :destroy

  has_many :browser_reader_file_formats, dependent: :destroy
  has_many :file_formats, through: :browser_reader_file_formats

  has_many :browser_reader_renderers, dependent: :destroy
  has_many :renderers, through: :browser_reader_renderers

  has_many :platform_browser_readers, dependent: :destroy
  has_many :platforms, through: :platform_browser_readers

  has_many :browser_reader_assistive_technologies, dependent: :destroy
  has_many :assistive_technologies, through: :browser_reader_assistive_technologies

  has_many :setups, through: :browser_reader_versions

  validates_presence_of :title

  default_scope { order('LOWER(title)') }

  def to_s
    title
  end
  def versions
    browser_reader_versions
  end

  def version_ids
    versions.collect{|v| v.id}
  end
end
