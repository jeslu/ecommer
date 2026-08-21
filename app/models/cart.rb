class Cart < ApplicationRecord
  belongs_to :user
  has_many :line_items, dependent: :destroy #current_user.cart.line_items
  has_many :products, through: :line_items #current_user.cart.products
  # optener el subtotal de  los productos en el carrito
  def sub_total
    sum = 0
    self.line_items.each do |line_item|
      sum += line_item.total_of_single_product
    end
    return sum
  end
end
