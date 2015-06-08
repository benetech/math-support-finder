class CreateAssistiveTechnologies < ActiveRecord::Migration
  def change
    create_table :assistive_technologies do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :version
      t.references :platform

      t.timestamps null: false
    end
  end
end
