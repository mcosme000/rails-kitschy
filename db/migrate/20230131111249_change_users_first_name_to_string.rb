class ChangeUsersFirstNameToString < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :first_name
    add_column :users, :first_name, :string
  end
end
