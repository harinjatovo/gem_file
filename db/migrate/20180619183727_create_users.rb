class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.datetime :age
      t.string :contry
      t.string :addresse
      t.string :sexe

      t.timestamps
    end
  end
end
