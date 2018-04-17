class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def none_js
    `echo #{params[:msg]} >> chat.log`
    @chat_log = `cat chat.log`
  end
end
