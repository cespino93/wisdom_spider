class Website < ApplicationRecord
  belongs_to :category
  validates :title, :description, :image_url, :category_id, presence: true
end
