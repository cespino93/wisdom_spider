class Category < ApplicationRecord
    has_many :websites, dependent: :destroy
    validates :name, presence: true
end
