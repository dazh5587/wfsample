class ShiftsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    before_action :correct_user,   only: :destroy
  def create
    @shift = current_user.shifts.build(shift_params)
    if @shift.save
      flash[:success] = "Shift created!"
      redirect_to root_url
    else
      @feed_items = current_user.feed
      render 'static_pages/home'
    end
  end

  def destroy
    @shift.destroy
    redirect_to root_url
  end

  private
    def shift_params
      params.require(:shift).permit(:content)
    end

    def correct_user
        @shift = current_user.shifts.find_by(id: params[:id])
        redirect_to root_url if @shift.nil?
    end

end
