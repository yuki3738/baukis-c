class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :email, null:false
      t.string :email_for_index, null:false
      t.string :hashed_password
      t.boolean :suspended, null: false, default: false

      t.timestamps
    end
    
    add_index :administrators, :email_for_index, unique: true
  end
end
