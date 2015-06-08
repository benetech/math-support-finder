class CreateMatrixEntries < ActiveRecord::Migration
  def change
    create_table :matrix_entries do |t|
      t.references :assistive_technology, index: true, foreign_key: true
      t.references :browser_reader, index: true, foreign_key: true
      t.references :format, index: true, foreign_key: true
      t.references :platform, index: true, foreign_key: true
      t.references :renderer, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
