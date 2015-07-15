class CreateVerificationStatuses < ActiveRecord::Migration
  def change
    create_table :verification_statuses do |t|
      t.string :title

      t.timestamps
    end
  end
end
