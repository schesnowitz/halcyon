class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit( :commodity, 
                                    :description,
                                    :has_multiple_pd,
                                    :weight, 
                                    :units, 
                                    :load_size, 
                                    :percent_deducted,      
                                    :miles,
                                    :pick_up_date,
                                    :pick_up_time,
                                    :delivery_date,
                                    :delivery_time,
                                    :equipment_type, 
                                    :status_name,
                                    :company_user_id,
                                    :driver_user_id,
                                    :updated_by,
                                    :pick_up_notes,
                                    :delivery_notes,
                                    :special_instructions,
                                    :dimentions,
                                    :destination_street,
                                    :destination_city,  
                                    :destination_state,
                                    :destination_zip,
                                    :origin_street,
                                    :origin_city,  
                                    :origin_state,
                                    :origin_zip,
                                    :origin_latitude,
                                    :origin_longitude,
                                    :destination_latitude,
                                    :destination_longitude,
                                    :origin_phone,
                                    :origin_contact,
                                    :destination_phone,
                                    :destination_contact,
                                    :shipper_company_name, 
                                    :receiver_company_name,
                                    :company_profile_id,
                                    :broker_shipper_load_id,
                                    :delivery_time_notes,
                                    :total_company_expenses,
                                    :booking_fee,
                                    :invoice_price,
                                    :driver_statement_id,
                                    :rate_to_owner_operator,
                                    :rate_to_driver_after_fees, 
                                    :agent_fee, 
                                    :percent_coverted_to_dollars,   
                                    :load_by_company_driver,
                                    :load_by_owner_not_paid_by_mile,   
                                    :load_by_owner_paid_by_mile,
                                    :driver_cents_pm,
                                    :percentage_id,
                                    :driver_rate_id, 
                                    :national_average_diesel_price,   
                                    :estimated_diesel_cost,
                                    :truck_mpg,
                                    :truck_year,
                                    :truck_number,
                                    :truck_make, 
                                    :truck_model,
                                    :truck_color,
                                    :truck_plate,
                                    :truck_state,
                                    :truck_vin,
                                    :trailer_number,
                                    :trailer_year,
                                    :trailer_make,
                                    :trailer_type,
                                    :trailer_length,
                                    :trailer_plate,
                                    :trailer_state,
                                    :trailer_vin,
                                    :trailer_door_type,
                                    :trailer_has_reefer,
                                    :broker_rep_name,
                                    :broker_rep_email,
                                    :broker_rep_number,
                                    :broker_rep_cell,
                                    :broker_after_hours_instructions,
                                    :pounds, 
                                    :kilos, 
                                    :is_pounds,
                                    :is_kilos,
                                    :is_hazmat,
                                    :is_temp_control,
                                    :is_fahrenheit,
                                    :is_celsius,
                                    :fahrenheit,
                                    :celsius,
                                    :kilometers
                                    )
    end
end
