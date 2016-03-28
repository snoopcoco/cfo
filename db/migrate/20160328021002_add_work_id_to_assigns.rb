class AddWorkIdToAssigns < ActiveRecord::Migration
  def change
    add_column :assigns, :work_id, :integer
  end
end
