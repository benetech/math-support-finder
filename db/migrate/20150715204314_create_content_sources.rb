class CreateContentSources < ActiveRecord::Migration
  def change
    create_table :content_sources do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
