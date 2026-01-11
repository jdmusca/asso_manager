class CreateUtilisateurs < ActiveRecord::Migration[8.1]
  def change
    create_table :utilisateurs do |t|
      t.string :email
      t.string :password_digest
      t.string :nom
      t.string :prenom
      t.string :role

      t.timestamps
    end
  end
end
