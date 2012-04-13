class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories, force: true do |t|
      t.string :name
      t.integer :sequence

      t.timestamps
    end
  end
end
