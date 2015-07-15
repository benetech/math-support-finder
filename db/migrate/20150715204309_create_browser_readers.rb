class CreateBrowserReaders < ActiveRecord::Migration
  def change
    create_table :browser_readers do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
