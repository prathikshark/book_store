class AddPriceToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :price, :int
  end
end
