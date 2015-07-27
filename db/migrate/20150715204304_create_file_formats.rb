class CreateFileFormats < ActiveRecord::Migration
  def change
    create_table :file_formats do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
