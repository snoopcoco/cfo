class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :wkname
      t.boolean :done, defaul: false
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
