class CreateContentSources < ActiveRecord::Migration
  def change
    create_table :content_sources do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :version

      t.timestamps null: false
    end

    create_table :content_sources_matrix_entries, id: false do |t|
      t.references :content_source, index: true
      t.references :matrix_entry, index: true
    end
  end
end
