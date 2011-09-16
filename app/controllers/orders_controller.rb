class OrdersController < ApplicationController
  def new
    response = EXPRESS_GATEWAY.setup_purchase(Order.new.price_in_cents,
      :ip                => request.remote_ip,
      :return_url        => callback_orders_url,
      :cancel_return_url => cancel_orders_url
    )
    redirect_to EXPRESS_GATEWAY.redirect_url_for(response.token)
  end

  def callback
    @order = Order.new
    @order.express_token = params[:token]
  end

  def create
    @order = Order.new
    @order.attributes = params[:order].merge(:ip_address => request.remote_ip)
    if @order.purchase
      if @order.save
        redirect_to order_path(@order)
      else
        raise 'failed to save'
      end
    else
      raise 'failed to purchase. ' + @order.transactions.first.response.message
    end
  end

  def show
    order = Order.find(params[:id])
    redirect_to(locations_path, :notice => "Wow, thanks for your payment of $#{order.price_in_cents / 100.0}!")
  end

  def index
  end

  def cancel
    render :text => 'canceled'
  end
end