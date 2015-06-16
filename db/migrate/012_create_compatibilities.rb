class CreateCompatibilities < ActiveRecord::Migration
  def change
    create_table :assistive_technologies_browser_reader, id: false do |t|
      t.references :assistive_technology
      t.references :browser_reader
    end

    create_table :assistive_technologies_platforms, id: false do |t|
      t.references :assistive_technology
      t.references :platform
    end

    create_table :assistive_technologies_renderers, id: false do |t|
      t.references :assistive_technology
      t.references :renderer
    end

    create_table :browser_readers_content_formats, id: false do |t|
      t.references :browser_reader
      t.references :content_format
    end

    create_table :browser_readers_platforms, id: false do |t|
      t.references :browser_reader
      t.references :platform
    end

    create_table :browser_readers_renderers, id: false do |t|
      t.references :browser_reader
      t.references :renderer
    end

add_index :assistive_technologies_browser_reader, :assistive_technology_id, name: "atbr_assistive_technology_id"
add_index :assistive_technologies_browser_reader, :browser_reader_id, name: "atbr_browser_reader_id"
add_index :assistive_technologies_platforms, :assistive_technology_id, name: "atp_assistive_technology_id"
add_index :assistive_technologies_platforms, :platform_id, name: "atp_platform_id"
add_index :assistive_technologies_renderers, :assistive_technology_id, name: "atr_assistive_technology_id"
add_index :assistive_technologies_renderers, :renderer_id, name: "atr_renderer_id"
add_index :browser_readers_content_formats, :browser_reader_id, name: "brcf_browser_reader_id"
add_index :browser_readers_content_formats, :content_format_id, name: "brcf_content_format_id"
add_index :browser_readers_platforms, :browser_reader_id, name: "brp_browser_reader_id"
add_index :browser_readers_platforms, :platform_id, name: "brp_platform_id"
add_index :browser_readers_renderers, :browser_reader_id, name: "brr_browser_reader_id"
add_index :browser_readers_renderers, :renderer_id, name: "brr_renderer_id"
end
end
