class CreateAssigns < ActiveRecord::Migration
  def change
    create_table :assigns do |t|

      t.timestamps null: false
    end
  end
end
