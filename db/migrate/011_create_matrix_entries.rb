class CreateMatrixEntries < ActiveRecord::Migration
  def change
    create_table :matrix_entries do |t|
      t.references :affordance, index: true, foreign_key: true
      t.references :assistive_technology_version, index: true, foreign_key: true
      t.references :browser_reader_version, index: true, foreign_key: true
      t.references :content_format, index: true, foreign_key: true
      t.references :platform_version, index: true, foreign_key: true
      t.references :renderer, index: true, foreign_key: true
      t.references :status, index: true, foreign_key: true
      t.text :notes
      t.timestamps null: false
    end

    create_table :features_matrix_entries, id: false do |t|
      t.references :feature, index: true
      t.references :matrix_entry, index: true
    end
  end
end
