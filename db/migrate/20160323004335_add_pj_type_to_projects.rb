class AddPjTypeToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :pj_type, :string
  end
end
