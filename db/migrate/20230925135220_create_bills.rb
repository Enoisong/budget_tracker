class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.integer :amount
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
