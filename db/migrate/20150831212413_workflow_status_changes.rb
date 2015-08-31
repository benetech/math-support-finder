class WorkflowStatusChanges < ActiveRecord::Migration
  def change
    w = WorkflowStatus.find(5)
    w.title = "Requested"
    w.save
    w = WorkflowStatus.find(4)
    w.title = "Doesn't Work"
    w.save
  end
end
