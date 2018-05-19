class WechatsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :check_wechat_legality

  def index
    render :text => params[:echostr]
  end

  def create
    if params[:xml][:MsgType] == "text"
      render "echo", :formats => :xml
    end
  end

  private

    def check_wechat_legality
      array = [15690876392, params[:timestamp], params[:nonce]].sort
      render :text => "Forbidden", :status => 403 if params[:signature] != Digest::SHA1.hexdigest(array.join)
    end
end
