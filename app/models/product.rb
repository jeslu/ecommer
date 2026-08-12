class Product < ApplicationRecord
    self.table_name = "products"

    has_one_attached :photo
    has_many :line_items
    
end
