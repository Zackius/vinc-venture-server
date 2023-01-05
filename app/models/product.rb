class Product < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    validates :image, presence: true
    validates :price, presence: true
    belongs_to :category, class_name: 'Category', optional: false
end
