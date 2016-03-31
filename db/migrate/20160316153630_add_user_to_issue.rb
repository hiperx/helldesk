class AddUserToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :user_id, :int
  end
end
