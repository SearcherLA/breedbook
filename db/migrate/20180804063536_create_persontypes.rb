class CreatePersontypes < ActiveRecord::Migration[5.2]
  def change
    create_table :persontypes do |t|
      t.string :persontype

      t.timestamps
    end
  end
end
