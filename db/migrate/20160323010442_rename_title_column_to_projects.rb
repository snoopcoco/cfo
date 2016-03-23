class RenameTitleColumnToProjects < ActiveRecord::Migration
  def change
    rename_column :projects, :pj_detail_string, :pj_detail
  end
end
