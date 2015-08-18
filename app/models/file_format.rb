# == Schema Information
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

  has_many :setups, dependent: :nullify

  has_many :browser_reader_file_formats, dependent: :destroy
  has_many :browser_readers, through: :browser_reader_file_formats

  validates_presence_of :title
  default_scope { order('LOWER(title)') }

  def to_s
    title
  end
end
