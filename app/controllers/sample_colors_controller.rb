class SampleColorsController < ApplicationController
  before_action :set_sample_color, only: [:show, :edit, :update, :destroy]

  # GET /sample_colors
  # GET /sample_colors.json
  def index
    @sample_colors = SampleColor.all
  end

  # GET /sample_colors/1
  # GET /sample_colors/1.json
  def show
  end

  # GET /sample_colors/new
  def new
    @sample_color = SampleColor.new
  end

  # GET /sample_colors/1/edit
  def edit
  end

  # POST /sample_colors
  # POST /sample_colors.json
  def create
    @sample_color = SampleColor.new(sample_color_params)

    respond_to do |format|
      if @sample_color.save
        format.html { redirect_to @sample_color, notice: 'Sample color was successfully created.' }
        format.json { render :show, status: :created, location: @sample_color }
      else
        format.html { render :new }
        format.json { render json: @sample_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_colors/1
  # PATCH/PUT /sample_colors/1.json
  def update
    respond_to do |format|
      if @sample_color.update(sample_color_params)
        format.html { redirect_to @sample_color, notice: 'Sample color was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_color }
      else
        format.html { render :edit }
        format.json { render json: @sample_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_colors/1
  # DELETE /sample_colors/1.json
  def destroy
    @sample_color.destroy
    respond_to do |format|
      format.html { redirect_to sample_colors_url, notice: 'Sample color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_color
      @sample_color = SampleColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_color_params
      params[:sample_color]
    end
end
