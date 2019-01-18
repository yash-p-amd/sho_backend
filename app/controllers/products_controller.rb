class ProductsController < ApplicationController


    def new
    end

    def index
        @products = Product.all
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
