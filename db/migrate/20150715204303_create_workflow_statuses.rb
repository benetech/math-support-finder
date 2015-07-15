class CreateWorkflowStatuses < ActiveRecord::Migration
  def change
    create_table :workflow_statuses do |t|
      t.string :title

      t.timestamps
    end
  end
end
