class Product < ApplicationRecord
    table_name = "products"
    has_one_attached :photo
    
end
