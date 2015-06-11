class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :title
      t.text :notes
      t.timestamps null: false
    end

    create_table :platform_versions do |t|
      t.references :platform, index: true, foreign_key: true
      t.string :version
      t.text :notes
      t.timestamps null: false
    end
  end
end
