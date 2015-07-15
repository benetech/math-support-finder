class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.references :platform_version, index: true, foreign_key: true
      t.references :renderer_version, index: true, foreign_key: true
      t.references :browser_reader_version, index: true, foreign_key: true
      t.references :assistive_technology_version, index: true, foreign_key: true
      t.references :platform_version, index: true, foreign_key: true
      t.references :format, index: true, foreign_key: true
      t.references :workflow_status, index: true, foreign_key: true

      t.timestamps
    end
  end
end
