class CreateTwiclones < ActiveRecord::Migration[5.2]
  def change
    create_table :twiclones do |t|
      t.timestamps
      t.text :contact
    end
  end
end
