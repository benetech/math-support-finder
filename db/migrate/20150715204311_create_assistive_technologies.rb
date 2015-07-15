class CreateAssistiveTechnologies < ActiveRecord::Migration
  def change
    create_table :assistive_technologies do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
