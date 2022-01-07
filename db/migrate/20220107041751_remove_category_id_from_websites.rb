class RemoveCategoryIdFromWebsites < ActiveRecord::Migration[6.1]
  def change
    remove_column :websites, :category_id, :string
  end
end
