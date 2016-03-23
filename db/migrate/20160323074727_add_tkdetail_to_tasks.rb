class AddTkdetailToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :thdetail, :string
  end
end
