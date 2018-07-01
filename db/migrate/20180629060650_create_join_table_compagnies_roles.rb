class CreateJoinTableCompagniesRoles < ActiveRecord::Migration[5.2]
  def change
    create_join_table :companies, :roles do |t|
       t.index [:company_id, :role_id]
       t.index [:role_id, :company_id]
    end
  end
end
