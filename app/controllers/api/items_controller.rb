class Api::ItemsController < ApplicationController

	def index
		@items = Item.all
		render :json => @items
		# json_response(@items)
	end

	def show
		json_response(@item)
	end

	def create
		@order.items.create!(item_params)
		json_response(@order.items)
	end

	def delete
		@item.destroy
		head :no_content
	end

	def update
		@item.update(item_params)
		head :no_content
	end

	private

	def item_params
		params.require(:item).permit(:order, :name, :quantity)
	end


end
