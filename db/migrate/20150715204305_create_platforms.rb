class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
