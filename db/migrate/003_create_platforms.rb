class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :version

      t.timestamps null: false
    end

    create_table :browser_readers_platforms, id: false do |t|
      t.references :browser_reader, index: true
      t.references :platform, index: true
    end
  end
end
