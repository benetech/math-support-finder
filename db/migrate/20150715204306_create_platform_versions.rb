class CreatePlatformVersions < ActiveRecord::Migration
  def change
    create_table :platform_versions do |t|
      t.references :platform, index: true, foreign_key: true
      t.float :version
      t.text :notes

      t.timestamps
    end
  end
end
