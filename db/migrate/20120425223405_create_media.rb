class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :name
      t.integer :project_id
      t.integer :page_id
      t.integer :type
      t.string :url

      t.timestamps
    end
  end
end
