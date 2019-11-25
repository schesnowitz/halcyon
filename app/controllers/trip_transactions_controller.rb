class TripTransactionsController < ApplicationController

    
  def create
    @trip = Trip.find(params[:trip_id])
    @trip_transaction = @trip.trip_transactions.create(trip_transaction_params)
    # @trip_transaction.user_id = current_user.id if current_user
    # @user = current_user
    if @trip_transaction.save
      # CommentMailer.new_trip_transaction(@trip_transaction).deliver_later
      flash[:success] = "The trip_transaction has been saved."
      redirect_to trip_path(@trip)
    else
      redirect_to trip_path(@trip)
      flash[:danger] = "#{}, We have these errors: " + @trip_transaction.errors.full_messages.to_sentence 
    end
  end 

  def update
    @trip = Trip.find(params[:trip_id])
    @trip_transaction = @trip.trip_transactions.find(params[:id])
    # is_not_trip_transaction_owner
    if @trip_transaction.update(trip_transaction_params)
      flash[:success] = "The trip_transaction has been updated."
      redirect_to trip_path(@trip)
    else 
      flash[:danger] = "#{@trip_transaction.user.first_name}, We have these errors: " + @trip_transaction.errors.full_messages.to_sentence 
      redirect_back(fallback_location: root_path)
  end 
end

  def edit
    @trip = Trip.find(params[:trip_id])
    @trip_transaction = @trip.trip_transactions.find(params[:id])
    # is_not_trip_transaction_owner
  end 
  
  def destroy
    @trip = Trip.find(params[:trip_id])
    @trip_transaction = @trip.trip_transactions.find(params[:id]) 
    if 
      @trip_transaction.destroy
      flash[:warning] = "The trip_transaction has been deleted."
      redirect_to trip_path(@trip)
    else
      flash[:danger] = "You do not own this trip_transaction!"
      redirect_back(fallback_location: root_path)
    end
  end
  

private

  # def is_not_trip_transaction_owner
  #   if current_user != @trip_transaction.user 
  #     flash[:danger] = "You do not own this trip_transaction!"
  #     redirect_back(fallback_location: root_path)
  #   end
  # end 

  def trip_transaction_params
    params.require(:trip_transaction).permit(:address, :pick_up, :drop_off, :order, :trip_id, :amount)
  end

end
