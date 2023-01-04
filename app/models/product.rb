class Product < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    validates :image, presence: true
    validates :price, presence: true
end
