class PickDropsController < ApplicationController

    
  def create
    @trip = Trip.find(params[:trip_id])
    @pick_drop = @trip.pick_drops.create(pick_drop_params)
    # @pick_drop.user_id = current_user.id if current_user
    # @user = current_user
    if @pick_drop.save
      # CommentMailer.new_pick_drop(@pick_drop).deliver_later
      flash[:success] = "The pick_drop has been saved."
      redirect_to trip_path(@trip)
    else
      redirect_to trip_path(@trip)
      flash[:danger] = "#{}, We have these errors: " + @pick_drop.errors.full_messages.to_sentence 
    end
  end 

  def update
    @trip = Trip.find(params[:trip_id])
    @pick_drop = @trip.pick_drops.find(params[:id])
    # is_not_pick_drop_owner
    if @pick_drop.update(pick_drop_params)
      flash[:success] = "The pick_drop has been updated."
      redirect_to trip_path(@trip)
    else 
      flash[:danger] = "#{@pick_drop.user.first_name}, We have these errors: " + @pick_drop.errors.full_messages.to_sentence 
      redirect_back(fallback_location: root_path)
  end 
end

  def edit
    @trip = Trip.find(params[:trip_id])
    @pick_drop = @trip.pick_drops.find(params[:id])
    # is_not_pick_drop_owner
  end 
  
  def destroy
    @trip = Trip.find(params[:trip_id])
    @pick_drop = @trip.pick_drops.find(params[:id]) 
    if 
      @pick_drop.destroy
      flash[:warning] = "The pick_drop has been deleted."
      redirect_to trip_path(@trip)
    else
      flash[:danger] = "You do not own this pick_drop!"
      redirect_back(fallback_location: root_path)
    end
  end
  

private

  # def is_not_pick_drop_owner
  #   if current_user != @pick_drop.user 
  #     flash[:danger] = "You do not own this pick_drop!"
  #     redirect_back(fallback_location: root_path)
  #   end
  # end 

  def pick_drop_params
    params.require(:pick_drop).permit(:address, :pick_up, :drop_off, :order, :trip_id)
  end

end
