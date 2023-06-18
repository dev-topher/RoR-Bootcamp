class AddAvatarNameRoleToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :avatar, :string
    add_column :users, :name, :string
    add_column :users, :role, :integer, default: 1
  end
end
