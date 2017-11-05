class Api::OrdersController < ApplicationController
	
def index
	@orders = Order.all
	json_response(@orders)
end

def show
	json_response(@order)
end

def create
	# items = order_params[:items]
	# phone_number = order_params[:phone_number]
	# ticket_number = order_params[:ticket_number]
	# name = order_params[:name]

	# order = Order.new(
	# 	phone_number: phone_number,
	# 	ticket_number: ticket_number,
	# 	 )

	@order = Order.create!(order_params)
	json_response(@order)

end

def delete
	@order.destroy
	head :no_content
end

def update
	@order.update(order_params)
	head :no_content
end

private

def order_params
	params.require(:ticket_number, :phone_number, :name, items:[])
end

def set_order
	@order = Order.find(params[:id])
end

