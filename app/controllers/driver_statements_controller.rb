class DriverStatementsController < ApplicationController
  before_action :get_driver
  before_action :set_driver_statement, only: [:show, :edit, :update, :destroy]


  # GET /driver_statements
  # GET /driver_statements.json
  def index
    @driver_statements = @driver.driver_statements
  end

  # GET /driver_statements/1
  # GET /driver_statements/1.json
  def show 


    @completed_trips = @driver.trips.where(["status = ?", "Completed"]).order(:id)
  end

  # GET /driver_statements/new
  def new
    @driver_statement = @driver.driver_statements.build
    @statement_trips = @driver_statement.trips.build
    @completed_trips = @driver.trips.where(["status = ?", "Completed"]).order(:id)
  end

  # GET /driver_statements/1/edit
  def edit
    @statement_trips = @driver_statement.trips.build
    @completed_trips = @driver.trips.where(["status = ?", "Completed"]).order(:id)
  end

  # POST /driver_statements
  # POST /driver_statements.json
  def create

    @driver_statement = @driver.driver_statements.build(driver_statement_params)
    # shark_posts_path(@shark)
    respond_to do |format|
      if @driver_statement.save
        format.html { redirect_to driver_driver_statement_path(@driver, @driver_statement), notice: 'Driver statement was successfully created.' }
        format.json { render :show, status: :created, location: @driver_statement }
      else
        format.html { render :new }
        format.json { render json: @driver_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driver_statements/1
  # PATCH/PUT /driver_statements/1.json
  def update
    @statement_trips = @driver_statement.trips.build
    respond_to do |format|
      if @driver_statement.update(driver_statement_params)
        format.html { redirect_to driver_driver_statement_path(@driver), notice: 'Driver statement was successfully updated.' }
        format.json { render :show, status: :ok, location: @driver_statement }
      else
        format.html { render :edit }
        format.json { render json: @driver_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driver_statements/1
  # DELETE /driver_statements/1.json
  def destroy

    @driver_statement.destroy
    respond_to do |format|
      format.html { redirect_to driver_driver_statements_path(@driver), notice: 'Driver statement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_driver
      @driver = Driver.find(params[:driver_id])
    end
 

    def set_driver_statement
      @driver_statement = @driver.driver_statements.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driver_statement_params
      params.require(:driver_statement).permit(:driver_id, :due_date, :paid, :trip_id, :trip, :add_to_statement, trips_attributes: Trip.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
