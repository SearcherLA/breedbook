class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :lastname
      t.string :firstname
      t.string :email
      t.string :phone
      t.string :street
      t.string :PLZ
      t.string :city
      t.references :persontype, foreign_key: true

      t.timestamps
    end
  end
end
