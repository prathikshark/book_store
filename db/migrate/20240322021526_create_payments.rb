class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :card_number
      t.date :expiry
      t.string :cvv

      t.timestamps
    end
  end
end
