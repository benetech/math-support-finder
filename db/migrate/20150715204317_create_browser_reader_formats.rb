class CreateBrowserReaderFormats < ActiveRecord::Migration
  def change
    create_table :browser_reader_formats do |t|
      t.references :browser_reader, index: true, foreign_key: true
      t.references :format, index: true, foreign_key: true

      t.timestamps
    end
  end
end
