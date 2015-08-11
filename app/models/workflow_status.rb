# == Schema Information
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

  def label
    "<span class='label label-#{css_class}'>#{to_s}</span>"
  end

  def css_class
    case id
    when 1
      "warning"
    when 2
      "success"
    when 3
      "primary"
    when 4
      "danger"
    when 5
      "info"
    end
  end

end
