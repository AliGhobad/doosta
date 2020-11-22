class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :address
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.text :photos
      t.string :links_to_share
      t.integer :fees
      t.integer :available
      t.integer :capacity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
