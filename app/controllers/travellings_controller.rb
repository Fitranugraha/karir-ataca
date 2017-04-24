class TravellingsController < ApplicationController
  before_action :set_travelling, only: [:show, :edit, :update, :destroy]

  # GET /travellings
  # GET /travellings.json
  def index
    @travellings = Travelling.all
  end

  # GET /travellings/1
  # GET /travellings/1.json
  def show
  end

  # GET /travellings/new
  def new
    @travelling = Travelling.new
  end

  # GET /travellings/1/edit
  def edit
  end

  # POST /travellings
  # POST /travellings.json
  def create
    @travelling = Travelling.new(travelling_params)

    respond_to do |format|
      if @travelling.save
        format.html { redirect_to @travelling, notice: 'Travelling was successfully created.' }
        format.json { render :show, status: :created, location: @travelling }
      else
        format.html { render :new }
        format.json { render json: @travelling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travellings/1
  # PATCH/PUT /travellings/1.json
  def update
    respond_to do |format|
      if @travelling.update(travelling_params)
        format.html { redirect_to @travelling, notice: 'Travelling was successfully updated.' }
        format.json { render :show, status: :ok, location: @travelling }
      else
        format.html { render :edit }
        format.json { render json: @travelling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travellings/1
  # DELETE /travellings/1.json
  def destroy
    @travelling.destroy
    respond_to do |format|
      format.html { redirect_to travellings_url, notice: 'Travelling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travelling
      @travelling = Travelling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travelling_params
      params.require(:travelling).permit(:country, :start_date, :end_date, :objective, :profile_id)
    end
end
