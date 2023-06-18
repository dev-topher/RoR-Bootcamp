class AddAvatarAndNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :avatar, :string
    add_column :users, :name, :string
  end
end
