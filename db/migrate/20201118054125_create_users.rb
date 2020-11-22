class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :phone
      t.datetime :email_verified_at
      t.string :photo
      t.text :bio

      t.timestamps
    end
  end
end
