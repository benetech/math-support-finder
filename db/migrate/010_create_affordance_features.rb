class CreateAffordanceFeatures < ActiveRecord::Migration
  def change
    create_table :affordance_features do |t|
      t.string :title
      t.text :notes
      t.references :affordance, index: true, foreign_key: true
    end
  end
end
