class ProductsController < ApplicationController


    def new
    end

    def index


       @return_Empty_Inventory=params[:return_Empty_Inventory]

       if (@return_Empty_Inventory === 'true') 
        @products = Product.all
       else
        @products = Product.where("inventory_count > 0", params[:products]  )
       end

    end

    def create
        @products = Product.new(product_params)
        @products.save
        redirect_to @products
    end

    def show
        @products = Product.find(params[:id])
    end

private
    def product_params
        params.require(:products).permit(:title, :price, :inventory_count)
    end 
end
