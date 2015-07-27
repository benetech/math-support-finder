class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
