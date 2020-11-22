class CreateAccepteds < ActiveRecord::Migration[5.1]
  def change
    create_table :accepteds do |t|
      t.references :event, foreign_key: true
      t.references :user, polymorphic: true

      t.timestamps
    end
  end
end
