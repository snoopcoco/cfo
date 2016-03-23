class AddTknameToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :tkname, :string
  end
end
