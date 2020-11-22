class CreateUserreviews < ActiveRecord::Migration[5.1]
  def change
    create_table :userreviews do |t|
      t.references :user, foreign_key: true
      t.references :user, polymorphic: true
      t.string :scores
      t.text :comments

      t.timestamps
    end
  end
end
