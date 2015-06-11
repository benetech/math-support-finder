class CreateBrowserReaders < ActiveRecord::Migration
  def change
    create_table :browser_readers do |t|
      t.string :title
      t.text :notes
      t.timestamps null: false
    end

    create_table :browser_reader_versions do |t|
      t.references :browser_reader, index: true, foreign_key: true
      t.string :version
      t.text :notes
      t.timestamps null: false
    end

  end
end
