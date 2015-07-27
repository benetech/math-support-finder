class CreateCapabilities < ActiveRecord::Migration
  def change
    create_table :capabilities do |t|
      t.references :feature, index: true, foreign_key: true
      t.references :affordance, index: true, foreign_key: true
      t.references :setup, index: true, foreign_key: true
      t.references :verification_status, index: true, foreign_key: true

      t.timestamps
    end
  end
end
