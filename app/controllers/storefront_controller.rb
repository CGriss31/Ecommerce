class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  	#params [:id] has category_id
  	@category = Category.find(params[:id])
  	#@products = Product.where(category_id: params [:id])
  	@products = @category.products	
  end

  def items_by_brand
  	@brand = params[:brand]
  	@products = Product.where(brand)
  end
end
