class RenameFromContactToContent < ActiveRecord::Migration[5.2]
  def change
    rename_column :twiclones, :contact, :content
  end
end
