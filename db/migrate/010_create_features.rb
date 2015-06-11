class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :title
      t.text :notes
      t.references :affordance, index: true, foreign_key: true
    end
  end
end
