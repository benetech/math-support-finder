class CreateContentSourceSetups < ActiveRecord::Migration
  def change
    create_table :content_source_setups do |t|
      t.references :setup, index: true, foreign_key: true
      t.references :content_source, index: true, foreign_key: true

      t.timestamps
    end
  end
end
