class CreateEvenreviews < ActiveRecord::Migration[5.1]
  def change
    create_table :evenreviews do |t|
      t.references :event, foreign_key: true
      t.references :user, polymorphic: true
      t.string :scores
      t.text :comments

      t.timestamps
    end
  end
end
