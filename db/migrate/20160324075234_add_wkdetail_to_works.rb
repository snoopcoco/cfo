class AddWkdetailToWorks < ActiveRecord::Migration
  def change
    add_column :works, :wkdetail, :string
  end
end
