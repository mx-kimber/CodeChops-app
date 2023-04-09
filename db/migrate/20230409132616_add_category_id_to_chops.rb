class AddCategoryIdToChops < ActiveRecord::Migration[7.0]
  def change
    add_column :chops, :category_id, :integer
  end
end
