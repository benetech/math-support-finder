class CreateAffordances < ActiveRecord::Migration
  def change
    create_table :affordances do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
