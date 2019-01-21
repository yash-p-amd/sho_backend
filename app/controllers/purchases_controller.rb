class PurchasesController < ApplicationController

def index

    @purchaseList = Purchase.joins(:product).select("purchases.*, products.title as p_title, products.price as p_price")
    
end

def check_out
  @cartPros = Purchase.joins(:product).select("purchases.*, products.title as p_title, products.price as p_price, products.inventory_count as p_inv_count")

  @finalTotalPrice = 0

  @cartPros.each do |cartPro|
    @getProFromInvs = Product.where("id = ?",cartPro.product_id)

    @getProFromInvs.each do |getProFromInv|

      @getInventoryCount = getProFromInv.inventory_count
      getProFromInv.inventory_count = getProFromInv.inventory_count - 1
      getProFromInv.save

    end

    @finalTotalPrice = @finalTotalPrice + cartPro.p_price

  end
  Purchase.delete_all
end


def new

    @getProducts = Product.where("id = ?",params[:product_id])
    @getProducts.each do |product|
      @getInventoryCount = product.inventory_count

      if @getInventoryCount > 0
        @purchase = Purchase.new(purchase_params)
        
          if @purchase.save
            redirect_to purchases_path
          end
  
        else
          redirect_to products_path
      end
    end
end

private
  def purchase_params
    params.permit(:product_id)
  end

end
