class PurchasesController < ApplicationController

def index


    #@purchaseList = Product.where("inventory_count > 0", params[:products]  )
    
    #@purchaseList = Purchase.joins(:products).where( [ 'Purchase.product_id = products.id'  ]  )
    #pages = Page.joins(:subject).where(['subjects.name = ? AND subjects.level = ? AND pages.name LIKE ?', 'Math', 2, '%Division'])
    #@invoices = Invoice.joins(:po).where("pos.vendor_id = ?", vendor_id)
    # @purchaseList = Purchase.all
    #Category.joins(:products).where('products.quantity > 3')


   # Company.joins(:price_movements,:goods_movements).where("goods_movement.date = price_movement.date")

    # @purchaseList = Product.joins(:purchases).where("purchases.product_id = 1")

    #@purchaseList = Purchase.all

    @purchaseList = Purchase.joins(:product).select("purchases.*, products.title as p_title, products.price as p_price")

end



def new
    #render plain: params[:product_id].inspect

    #@products = Product.where("inventory_count > 0", params[:products]  )
    #@purchase = Purchase.new(purchase_params)


    @getProducts = Product.where("id = ?",params[:product_id])
    @getProducts.each do |product|
      @getInventoryCount = product.inventory_count
    end
    
    if @getInventoryCount > 0
      @purchase = Purchase.new(purchase_params)
      @purchase.save
      redirect_to purchases_path

      else
        redirect_to products_path
    end

    # if (@return_Empty_Inventory === 'true') 
    #   @products = Product.all
    #  else
    #   @products = Product.where("inventory_count > 0", params[:products]  )
    #  end
  




    #redirect_to(products_path) and return
    
    #redirect_to (:back), :notice => "problem with the start_date and end_date" and return

end

private
  def purchase_params
    params.permit(:product_id)
  end

end
