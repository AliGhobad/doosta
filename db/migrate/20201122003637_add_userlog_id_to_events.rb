class AddUserlogIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :userlog_id, :integer
    add_index :events, :userlog_id
  end
end
