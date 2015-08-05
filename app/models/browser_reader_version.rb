# == Schema Information
#
# Table name: browser_reader_versions
#
#  id                :integer          not null, primary key
#  browser_reader_id :integer
#  version           :float
#  notes             :text
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_browser_reader_versions_on_browser_reader_id  (browser_reader_id)
#

class BrowserReaderVersion < ActiveRecord::Base
  has_many :setups, dependent: :nullify
  belongs_to :browser_reader

  validates_associated :browser_reader
  validates_presence_of :browser_reader, :version
  validates :version, numericality: true

  def to_s
    [browser_reader.to_s, version.to_s].join(" ")
  end

end
