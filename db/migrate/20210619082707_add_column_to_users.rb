class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :icon_image, :string
    add_column :users, :profile_name, :string
    add_column :users, :self_introduction, :string
  end
end
