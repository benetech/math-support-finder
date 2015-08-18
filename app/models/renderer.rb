# == Schema Information
#
# Table name: renderers
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class Renderer < ActiveRecord::Base

  has_many :setups, dependent: :nullify

  has_many :browser_reader_renderers, dependent: :destroy
  has_many :browser_readers, through: :browser_reader_renderers

  validates_presence_of :title

  def to_s
    title
  end


end
