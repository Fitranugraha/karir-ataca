class MarriedStatusesController < ApplicationController
  before_action :set_married_status, only: [:show, :edit, :update, :destroy]

  # GET /married_statuses
  # GET /married_statuses.json
  def index
    @married_statuses = MarriedStatus.all
  end

  # GET /married_statuses/1
  # GET /married_statuses/1.json
  def show
  end

  # GET /married_statuses/new
  def new
    @married_status = MarriedStatus.new
  end

  # GET /married_statuses/1/edit
  def edit
  end

  # POST /married_statuses
  # POST /married_statuses.json
  def create
    @married_status = MarriedStatus.new(married_status_params)

    respond_to do |format|
      if @married_status.save
        format.html { redirect_to @married_status, notice: 'Married status was successfully created.' }
        format.json { render :show, status: :created, location: @married_status }
      else
        format.html { render :new }
        format.json { render json: @married_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /married_statuses/1
  # PATCH/PUT /married_statuses/1.json
  def update
    respond_to do |format|
      if @married_status.update(married_status_params)
        format.html { redirect_to @married_status, notice: 'Married status was successfully updated.' }
        format.json { render :show, status: :ok, location: @married_status }
      else
        format.html { render :edit }
        format.json { render json: @married_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /married_statuses/1
  # DELETE /married_statuses/1.json
  def destroy
    @married_status.destroy
    respond_to do |format|
      format.html { redirect_to married_statuses_url, notice: 'Married status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_married_status
      @married_status = MarriedStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def married_status_params
      params.require(:married_status).permit(:name)
    end
end
