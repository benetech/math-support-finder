class CreateMediaAttachments < ActiveRecord::Migration
  def change
    create_table :media_attachments do |t|
      t.string :title
      t.string :type
      t.string :link
      t.references :matrix_entry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
