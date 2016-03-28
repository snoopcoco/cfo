class CreateAssigns < ActiveRecord::Migration
  def change
    create_table :assigns do |t|
      t.references :work, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
