class VerificationStatusDefaultsToFalse < ActiveRecord::Migration
  def change
    remove_index(:capabilities, :verification_status_id)
    remove_reference(:capabilities, :verification_status)
    Capability.all.each do |c|
      c.save
    end
    drop_table(:verification_statuses)
    add_column :capabilities, :verification_status, :boolean, default: false
  end
end
