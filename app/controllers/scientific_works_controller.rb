class ScientificWorksController < ApplicationController
  before_action :set_scientific_work, only: [:show, :edit, :update, :destroy]

  # GET /scientific_works
  # GET /scientific_works.json
  def index
    @scientific_works = ScientificWork.all
  end

  # GET /scientific_works/1
  # GET /scientific_works/1.json
  def show
  end

  # GET /scientific_works/new
  def new
    @scientific_work = ScientificWork.new
  end

  # GET /scientific_works/1/edit
  def edit
  end

  # POST /scientific_works
  # POST /scientific_works.json
  def create
    @scientific_work = ScientificWork.new(scientific_work_params)

    respond_to do |format|
      if @scientific_work.save
        format.html { redirect_to @scientific_work, notice: 'Scientific work was successfully created.' }
        format.json { render :show, status: :created, location: @scientific_work }
      else
        format.html { render :new }
        format.json { render json: @scientific_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scientific_works/1
  # PATCH/PUT /scientific_works/1.json
  def update
    respond_to do |format|
      if @scientific_work.update(scientific_work_params)
        format.html { redirect_to @scientific_work, notice: 'Scientific work was successfully updated.' }
        format.json { render :show, status: :ok, location: @scientific_work }
      else
        format.html { render :edit }
        format.json { render json: @scientific_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scientific_works/1
  # DELETE /scientific_works/1.json
  def destroy
    @scientific_work.destroy
    respond_to do |format|
      format.html { redirect_to scientific_works_url, notice: 'Scientific work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scientific_work
      @scientific_work = ScientificWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scientific_work_params
      params.require(:scientific_work).permit(:title, :notes, :profile_id)
    end
end
