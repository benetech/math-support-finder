class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :title
      t.text :notes

      t.timestamps
    end
  end
end
