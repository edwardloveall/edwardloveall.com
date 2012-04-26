class MediaDescription < ActiveRecord::Migration
  def up
    add_column :media, :appended, :string
  end

  def down
    remove_column :media, :appended, :string
  end
end