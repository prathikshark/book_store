class AddColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :isadmin, :boolean
  end
end
