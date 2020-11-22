class AddUserlogIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :userlog_id, :integer
    add_index :users, :userlog_id
  end
end
