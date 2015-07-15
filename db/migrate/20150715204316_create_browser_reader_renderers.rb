class CreateBrowserReaderRenderers < ActiveRecord::Migration
  def change
    create_table :browser_reader_renderers do |t|
      t.references :browser_reader, index: true, foreign_key: true
      t.references :renderer, index: true, foreign_key: true

      t.timestamps
    end
  end
end
