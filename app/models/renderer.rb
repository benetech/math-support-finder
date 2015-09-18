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
  has_many :browser_readers, through: :browser_reader_renderers, :after_remove => proc { |a| a.touch }

  validates_presence_of :title
  default_scope { order('LOWER(title)') }

  def to_s
    title
  end


end
