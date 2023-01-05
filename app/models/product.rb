class Product < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    validates :image, presence: true
    validates :price, presence: true
    validate :category_id, true
    belongs_to :category 
end
