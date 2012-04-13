class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string  :title
      t.string  :slug
      t.integer :category_id
      t.text    :description
      t.boolean :act_as_category
      
      t.timestamps
    end
  end
end
