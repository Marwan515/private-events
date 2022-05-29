class AttendenceController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]

  def new
    @attended = current_user.attendees.build
  end

  def create
    @attended = current_user.attendees.build(attended_params)
    respond_to do |format|
      if @attended.save
        format.html { redirect_to @attended.attended_event, notice: "Your Are Attending This Event!" }
        format.json { render :show, status: :created, location: @attended.attended_event }
      else
        format.html { redirect_to @attended.attended_event, status: :unprocessable_entity }
        format.json { render json: @attended.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @attended.destroy

    redirect_to @event
  end
  private
  def set_attended
    @attended = Attendee.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def attended_params
    params.require(:attendee).permit(:attended_event_id, :attendee_id)
  end

end
