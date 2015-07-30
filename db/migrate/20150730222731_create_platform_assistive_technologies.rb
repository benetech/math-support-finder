class CreatePlatformAssistiveTechnologies < ActiveRecord::Migration
  def change
    create_table :platform_assistive_technologies do |t|
      t.references :platform, index: {name: "pat_platform_id"}, foreign_key: true
      t.references :assistive_technology, index: {name: "pat_assistive_technology_id"}, foreign_key: true

      t.timestamps
    end
  end
end
