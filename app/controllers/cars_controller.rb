class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy, :add_colors]

  # GET /cars
  # GET /cars.json
  def index
    @car_models = CarModel.all
    @first = Car.all.first
    @cars = Car.all.includes(:car_model)
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
    @car_models = CarModel.all
  end

  # GET /cars/1/edit
  def edit
    @car_models = CarModel.all
    @sample_colors = SampleColor.where(car_model_id: @car.car_model_id)
    @color = Color.new
  end

  

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to new_color_path(id: @car.id), notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    puts 'RUNNING CAR UPDATE' * 10
    puts '*' * 400
    @color = Color.new(color_params)
    @car.color_ids = params[:car][:color_ids] || []
     @car.color_value_ones = params[:car][:color_value_ones] || []
     @car.color_value_twos = params[:car][:color_value_twos] || []
        respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:id, :car_name, :car_model_id, colors_attributes: [:id,  {:color_ids => [], :color_value_ones => [], :color_value_twos => []},  :value_one, :color_value_twos,
      finishes_attributes: [:id, :value_one] ]  )
    end

    def color_params
      params.require(:color).permit(:id,  {:color_ids => [], :color_value_ones => [], :color_value_twos => []},  :value_one, :color_value_twos,
      finishes_attributes: [:id, :value_one]  )
    end
end
