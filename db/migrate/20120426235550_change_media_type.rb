class ChangeMediaType < ActiveRecord::Migration
  def up
    change_column :media, :type, :string
  end

  def down
    change_column :media, :type, :integer
  end
end
