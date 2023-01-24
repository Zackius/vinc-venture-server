class Category < ApplicationRecord
     validates :name, presence: true, uniqueness: true
     validates :image, presence: true
     has_many  :products
end
