class CreateWebsites < ActiveRecord::Migration[6.1]
  def change
    create_table :websites do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.integer :category_id

      t.timestamps
    end
  end
end
