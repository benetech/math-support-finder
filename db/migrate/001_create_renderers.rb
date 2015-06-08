class CreateRenderers < ActiveRecord::Migration
  def change
    create_table :renderers do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :version

      t.timestamps null: false
    end

    create_table :browser_readers_renderers, id: false do |t|
      t.references :browser_reader, index: true
      t.references :renderer, index: true
    end
  end
end
