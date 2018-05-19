class WechatsController < ApplicationController
  def index
    render plain: params[:echostr]
  end

  def welcome
  end
end
