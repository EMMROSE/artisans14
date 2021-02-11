class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :message
      t.boolean :plombier
      t.boolean :electricite
      t.boolean :peinture
      t.boolean :carrelage
      t.boolean :cheminee
      t.boolean :menuiserie
      t.boolean :couverture
      t.boolean :amenagement_interieur
      t.boolean :amenagement_exterieur
      t.boolean :maconnerie
      t.boolean :terrassement
      t.boolean :tout

      t.timestamps
    end
  end
end
