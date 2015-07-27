# == Schema Infile_formation
#
# Table name: workflow_statuses
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime
#  updated_at :datetime
#

class WorkflowStatus < ActiveRecord::Base
  has_many :setups, dependent: :nullify

  def to_s
    title
  end
end
