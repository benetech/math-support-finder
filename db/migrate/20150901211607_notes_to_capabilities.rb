class NotesToCapabilities < ActiveRecord::Migration
  def change
    remove_column :features, :notes, :text
    remove_column :outputs, :notes, :text
    add_column :affordances, :notes, :text
  end
end
