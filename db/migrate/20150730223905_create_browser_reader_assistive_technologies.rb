class CreateBrowserReaderAssistiveTechnologies < ActiveRecord::Migration
  def change
    create_table :browser_reader_assistive_technologies do |t|
      t.references :browser_reader, index: {name: "brat_browser_reader_id"}, foreign_key: true
      t.references :assistive_technology, index: {name: "brat_assistive_technology_id"}, foreign_key: true

      t.timestamps
    end
  end
end
