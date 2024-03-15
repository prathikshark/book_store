class CreateUserbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :userbooks do |t|
      t.references :book, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
