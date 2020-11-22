class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.references :event, foreign_key: true
      t.references :user, polymophic: true, foreign_key: true

      t.timestamps
    end
  end
end
