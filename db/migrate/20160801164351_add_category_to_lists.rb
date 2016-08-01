class AddCategoryToLists < ActiveRecord::Migration
  def change
    add_column :lists, :category, :string
  end
end
