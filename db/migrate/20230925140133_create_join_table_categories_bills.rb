class CreateJoinTableCategoriesBills < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :bills do |t|
      t.index [:category_id, :bill_id]
      t.index [:bill_id, :category_id]
    end
  end
end