class CreateOutputs < ActiveRecord::Migration
  def change
    create_table :outputs do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
