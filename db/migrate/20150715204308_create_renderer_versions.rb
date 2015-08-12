class CreateRendererVersions < ActiveRecord::Migration
  def change
    create_table :renderer_versions do |t|
      t.references :renderer, index: true, foreign_key: true
      t.string :version
      t.text :notes

      t.timestamps
    end
  end
end
