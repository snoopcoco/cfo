class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :pj_name
      t.string :pj_detail_string

      t.timestamps null: false
    end
  end
end
