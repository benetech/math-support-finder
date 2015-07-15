class CreatePats < ActiveRecord::Migration
  def change
    create_table :pats do |t|
      t.references :platform, index: true, foreign_key: true
      t.references :assistive_technology, index: true, foreign_key: true

      t.timestamps
    end
  end
end
