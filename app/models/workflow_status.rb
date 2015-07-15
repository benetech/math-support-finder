# == Schema Information
#
# Table name: workflow_statuses
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class WorkflowStatus < ActiveRecord::Base

end
