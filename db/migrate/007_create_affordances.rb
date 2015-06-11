class CreateAffordances < ActiveRecord::Migration
  def change
    create_table :affordances do |t|
      t.string :title
      t.text :notes

      t.timestamps null: false
    end

  end
end

