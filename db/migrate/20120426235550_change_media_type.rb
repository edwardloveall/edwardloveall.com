class ChangeMediaType < ActiveRecord::Migration
  def up
    change_column :media, :type, :string
    rename_column :media, :type, :media_type
  end

  def down
    rename_column :media, :media_type, :type
    change_column :media, :type, :integer
  end
end
