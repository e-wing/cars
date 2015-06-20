class SampleFinishesController < ApplicationController
  before_action :set_sample_finish, only: [:show, :edit, :update, :destroy]

  # GET /sample_finishes
  # GET /sample_finishes.json
  def index
    @sample_finishes = SampleFinish.all
  end

  # GET /sample_finishes/1
  # GET /sample_finishes/1.json
  def show
  end

  # GET /sample_finishes/new
  def new
    @sample_finish = SampleFinish.new
  end

  # GET /sample_finishes/1/edit
  def edit
  end

  # POST /sample_finishes
  # POST /sample_finishes.json
  def create
    @sample_finish = SampleFinish.new(sample_finish_params)

    respond_to do |format|
      if @sample_finish.save
        format.html { redirect_to @sample_finish, notice: 'Sample finish was successfully created.' }
        format.json { render :show, status: :created, location: @sample_finish }
      else
        format.html { render :new }
        format.json { render json: @sample_finish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_finishes/1
  # PATCH/PUT /sample_finishes/1.json
  def update
    respond_to do |format|
      if @sample_finish.update(sample_finish_params)
        format.html { redirect_to @sample_finish, notice: 'Sample finish was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_finish }
      else
        format.html { render :edit }
        format.json { render json: @sample_finish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_finishes/1
  # DELETE /sample_finishes/1.json
  def destroy
    @sample_finish.destroy
    respond_to do |format|
      format.html { redirect_to sample_finishes_url, notice: 'Sample finish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_finish
      @sample_finish = SampleFinish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_finish_params
      params[:sample_finish]
    end
end
