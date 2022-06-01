class AttendeesController < ApplicationController
  before_action :authenticate_user!

  def create
    @attended = Attendee.new(attended_params)
    respond_to do |format|
      if @attended.save
        format.html { redirect_to @attended.attended_event, notice: "You Are Attending The Event!" }
        format.json { render :show, status: :created, location: @attended.attended_event }
      else
        format.html { redirect_to @attended.attended_event, status: :unprocessable_entity }
        format.json { render json: @attended.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @attended.destroy

    redirect_to root_path
  end
  private
    def set_attended
      @attended = Attendee.find(params[:id])
    end

    def set_event
      @event = Event.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def attended_params
      params.require(:attendee).permit(:attended_id, :attended_event_id)
    end  
end
