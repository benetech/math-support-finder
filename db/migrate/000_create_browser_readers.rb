class CreateBrowserReaders < ActiveRecord::Migration
  def change
    create_table :browser_readers do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :version

      t.timestamps null: false
    end
  end
end
