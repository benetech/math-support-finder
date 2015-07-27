class CreateBrowserReaderFileFormats < ActiveRecord::Migration
  def change
    create_table :browser_reader_file_formats do |t|
      t.references :browser_reader, index: true, foreign_key: true
      t.references :file_format, index: true, foreign_key: true

      t.timestamps
    end
  end
end
