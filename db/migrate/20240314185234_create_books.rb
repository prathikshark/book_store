class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.string :author
      t.references :bookstore, null: false, foreign_key: true

      t.timestamps
    end
  end
end
