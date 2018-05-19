class WechatsController < ApplicationController
  def index
    render plain: params[:echostr]
  end
end
