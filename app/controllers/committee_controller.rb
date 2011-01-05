class CommitteeController < ApplicationController
  before_filter :lookup

  def show
    @status = @committee.messages.order("created_at DESC").first
    @messages = Message.order('created_at  DESC').limit(20)
  end

  def attendance
    unless params[:session]
      redirect_to :action => 'attendance', :session => '1'
      return
    end

    @attendees = @committee.attendees
    @session = params[:session]
    @notice = params[:notice]

    respond_to do |format|
      format.html
    end
  end

  def update_attendance
    @session = params[:session]
    present_field = ('present' + @session).to_sym
    @committee.attendees.each do |attendee|
      input_name = ('std' + attendee.id.to_s + '_present').to_sym
      attendee[present_field] = params[input_name] == 'true' ? true : false
      attendee.save
    end
    respond_to do |format|
      format.html { redirect_to :action => 'attendance',
        :notice => "attendance records updated",
        :session => @session }
    end
  end

  private

  def lookup
    @committee = Committee.find_by_acronym(params[:committee].upcase)
  end

end
