class TradersController < ApplicationController
  before_action :authenticate_user!
  before_action :initialize_iex_client

  def dashboard
  end

  def trending_stocks
    @trending_stocks = client.stock_market_list(:mostactive)
  end
end
