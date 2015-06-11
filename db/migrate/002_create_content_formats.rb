class CreateContentFormats < ActiveRecord::Migration
  def change
    create_table :content_formats do |t|
      t.string :title
      t.text :notes

      t.timestamps null: false
    end
  end
end
