class Cart < ApplicationRecord
  belongs_to :user
  has_many :line_items, dependent: :destroy #current_user.cart.line_items
  has_many :products, through: :line_items #current_user.cart.products
end
