class CreateSetups < ActiveRecord::Migration
  def change
    create_table :setups do |t|
      t.references :platform_version, index: true, foreign_key: true
      t.references :renderer_version, index: true, foreign_key: true
      t.references :browser_reader_version, index: true, foreign_key: true
      t.references :assistive_technology_version, index: true, foreign_key: true
      t.references :file_format, index: true, foreign_key: true
      t.references :workflow_status, index: true, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
