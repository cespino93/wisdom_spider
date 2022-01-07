class Category < ApplicationRecord
    has_many :websites, dependent: :destroy
end
