class FormalEducationsController < ApplicationController
  before_action :set_formal_education, only: [:show, :edit, :update, :destroy]

  # GET /formal_educations
  # GET /formal_educations.json
  def index
    @formal_educations = FormalEducation.all
  end

  # GET /formal_educations/1
  # GET /formal_educations/1.json
  def show
  end

  # GET /formal_educations/new
  def new
    @formal_education = FormalEducation.new
  end

  # GET /formal_educations/1/edit
  def edit
  end

  # POST /formal_educations
  # POST /formal_educations.json
  def create
    @formal_education = FormalEducation.new(formal_education_params)

    respond_to do |format|
      if @formal_education.save
        format.html { redirect_to @formal_education, notice: 'Formal education was successfully created.' }
        format.json { render :show, status: :created, location: @formal_education }
      else
        format.html { render :new }
        format.json { render json: @formal_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formal_educations/1
  # PATCH/PUT /formal_educations/1.json
  def update
    respond_to do |format|
      if @formal_education.update(formal_education_params)
        format.html { redirect_to @formal_education, notice: 'Formal education was successfully updated.' }
        format.json { render :show, status: :ok, location: @formal_education }
      else
        format.html { render :edit }
        format.json { render json: @formal_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formal_educations/1
  # DELETE /formal_educations/1.json
  def destroy
    @formal_education.destroy
    respond_to do |format|
      format.html { redirect_to formal_educations_url, notice: 'Formal education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formal_education
      @formal_education = FormalEducation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formal_education_params
      params.require(:formal_education).permit(:name, :level, :start_date, :end_date, :certificate, :faculty, :department, :notes, :profile_id)
    end
end
