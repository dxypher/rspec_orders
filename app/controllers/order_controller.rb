class OrderController < ApplicationController

  def index
  end

  def create
    @order = user.order.create
  end
end
