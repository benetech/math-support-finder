class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :version

      t.timestamps null: false
    end

    create_table :browser_readers_formats, id: false do |t|
      t.references :browser_reader, index: true
      t.references :format, index: true
    end

  end
end
