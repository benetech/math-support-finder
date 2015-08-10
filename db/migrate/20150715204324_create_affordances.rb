class CreateAffordances < ActiveRecord::Migration
  def change
    create_table :affordances do |t|
      t.references :feature, index: true, foreign_key: true
      t.references :output, index: true, foreign_key: true

      t.timestamps
    end
  end
end
