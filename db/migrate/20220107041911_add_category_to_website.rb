class AddCategoryToWebsite < ActiveRecord::Migration[6.1]
  def change
    add_reference :websites, :category, foreign_key: true
  end
end
