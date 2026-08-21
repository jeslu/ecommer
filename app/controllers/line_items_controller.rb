class LineItemsController < ApplicationController
 
    def buy_now
        # checar si el producto exite
        @selected_product = Product.find(params[:product_id])
        # checar si el producto exite
        if @current_cart.products.include?(@selected_product)
            # si el producto ya esta en el carrito, aumentar la cantidad
            @line_item = @current_cart.line_items.find_by(product_id: @selected_product.id)
        else
            # si el producto no esta en el carrito, agregarlo
          @line_item = LineItem.new
          @line_item.cart = @current_cart
          @line_item.product = @selected_product
          @line_item.save
        end
        redirect_to carts_path(@current_cart)
    end
    def add_to_cart
        

    end

end    