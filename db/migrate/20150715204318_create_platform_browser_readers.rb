class CreatePlatformBrowserReaders < ActiveRecord::Migration
  def change
    create_table :platform_browser_readers do |t|
      t.references :platform, index: true, foreign_key: true
      t.references :browser_reader, index: true, foreign_key: true

      t.timestamps
    end
  end
end
