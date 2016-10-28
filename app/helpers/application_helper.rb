module ApplicationHelper
	def get_product_categories
		Product.uniq.pluck(:category)
	end

	def cart_count
		if current_cart != nil
			current_cart.order_items.count
		else
			0
		end
	end

end
