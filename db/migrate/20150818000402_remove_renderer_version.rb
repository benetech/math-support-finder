class RemoveRendererVersion < ActiveRecord::Migration
  def change
    add_column :setups, :renderer_id, :integer
    add_index :setups, :renderer_id
    remove_index :setups, :renderer_version_id
    remove_column :setups, :renderer_version_id
    drop_table :renderer_versions
    Setup.all.each do |s|
      s.renderer = Renderer.first
      s.save!
  end
end
