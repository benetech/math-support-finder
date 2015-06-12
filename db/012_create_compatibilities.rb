class CreateCompatibilities < ActiveRecord::Migration
  def change
# stupid error, 63 char limit on indexes
#    create_table :assistive_technologies_browser_reader, id: false do |t|
#      t.references :assistive_technology, index: true
#      t.references :browser_reader, index: true
#    end

#    create_table :assistive_technologies_platforms, id: false do |t|
#      t.references :assistive_technology, index: true
#      t.references :platform, index: true
#    end

#    create_table :assistive_technologies_renderers, id: false do |t|
#      t.references :assistive_technology, index: true
#      t.references :renderer, index: true
#    end

    create_table :browser_readers_content_formats, id: false do |t|
      t.references :browser_reader, index: true
      t.references :content_format, index: true
    end

    create_table :browser_readers_platforms, id: false do |t|
      t.references :browser_reader, index: true
      t.references :platform, index: true
    end

    create_table :browser_readers_renderers, id: false do |t|
      t.references :browser_reader, index: true
      t.references :renderer, index: true
    end
  end
end
