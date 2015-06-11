class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :title
    end
  end
end
