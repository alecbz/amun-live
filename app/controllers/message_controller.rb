require 'pusher'

Pusher.app_id = '2350'
Pusher.key = 'f456a35f16674d11f83a'
Pusher.secret = '8599d2a74dc2d5898ff4'

class MessageController < ApplicationController
  def create
    @msg = Message.new(params[:message])
    @msg.committee = Committee.find_by_acronym(params[:committee].upcase)
    @msg.save
    Pusher['messages'].trigger('new_message',{:text => @msg.text, :poster => @msg.committee.acronym})

    respond_to do |format|
      format.html { redirect_to :controller => "committee",
        :action => "show",
        :committee => params[:committee] }
      format.js { render :json => @msg }
    end
  end

end
