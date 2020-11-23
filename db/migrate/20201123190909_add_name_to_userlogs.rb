class AddNameToUserlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :userlogs, :name, :string
  end
end
