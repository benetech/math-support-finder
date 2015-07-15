class CreateContentSourceConfigurations < ActiveRecord::Migration
  def change
    create_table :content_source_configurations do |t|
      t.references :configuration, index: true, foreign_key: true
      t.references :content_source, index: true, foreign_key: true

      t.timestamps
    end
  end
end
