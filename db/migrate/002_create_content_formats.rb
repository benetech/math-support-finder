class CreateContentFormats < ActiveRecord::Migration
  def change
    create_table :content_formats do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :version

      t.timestamps null: false
    end

    create_table :browser_readers_content_formats, id: false do |t|
      t.references :browser_reader, index: true
      t.references :content_format, index: true
    end

  end
end
