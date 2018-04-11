class ProductsController < ApplicationController
	def create
		@product = Product.create(product_params)
		redirect_to category_path(@product.category_id)
	end

	private   
    # Never trust parameters from the scary internet, only allow the white list through.
	def product_params
	    params.require(:product).permit(:name, :price, :category_id)
	end
end
