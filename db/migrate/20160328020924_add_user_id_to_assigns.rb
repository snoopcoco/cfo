class AddUserIdToAssigns < ActiveRecord::Migration
  def change
    add_column :assigns, :user_id, :integer
  end
end
