class AddQuantityToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :quantity, :int
  end
end
