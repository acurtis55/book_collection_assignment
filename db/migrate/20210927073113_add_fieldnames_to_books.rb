class AddFieldnamesToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :authors, :string
    add_column :books, :price, :decimal
    add_column :books, :published_date, :datetime
  end
end
