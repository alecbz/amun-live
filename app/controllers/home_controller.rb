class HomeController < ApplicationController
  def index
    @committees = Committee.all
    @messages = Message.order('created_at  DESC').limit(20)
  end

end
