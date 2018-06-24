class CreateGemes < ActiveRecord::Migration[5.2]
  def change
    create_table :gemes do |t|
      t.string :nom
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
