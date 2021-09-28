class RemoveFieldnamesFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :authors, :string
  end
end
