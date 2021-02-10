class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :message
      t.boolean :plombier
      t.boolean :electricite
      t.boolean :tout

      t.timestamps
    end
  end
end
