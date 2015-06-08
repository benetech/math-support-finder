class CreateAffordances < ActiveRecord::Migration
  def change
    create_table :affordances do |t|
      t.string :type
      t.boolean :verified
      t.json :details
      t.references :matrix_entry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
