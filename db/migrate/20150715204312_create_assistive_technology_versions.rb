class CreateAssistiveTechnologyVersions < ActiveRecord::Migration
  def change
    create_table :assistive_technology_versions do |t|
      t.references :assistive_technology, index: true, foreign_key: true
      t.string :version
      t.text :notes

      t.timestamps
    end
  end
end
