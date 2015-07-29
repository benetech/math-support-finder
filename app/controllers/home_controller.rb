class HomeController < ApplicationController
  def index
    @q = Setup.ransack(params[:q])
    @setups = @q.result.page(params[:page])
  end
end
