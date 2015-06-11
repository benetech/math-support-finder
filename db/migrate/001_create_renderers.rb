class CreateRenderers < ActiveRecord::Migration
  def change
    create_table :renderers do |t|
      t.string :title
      t.text :notes

      t.timestamps null: false
    end

  end
end
