class ProfilesController < ApplicationController
before_action :set_profile, only: [:show, :edit, :update, :destroy] 

#before_action :authenticate_user!
#after_action :verify_authorized


  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
    #authorize Profile
    #@profiles = policy_scope(Profile)
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @profile=Profile.find(params[:id])
    authorize @profile
    #@profile=Profile.where(user==current_user)


    #authorize @profile

    #scope.where(:id => profile.id).exists?

  end

  # GET /profiles/new
  def new
     @profile = Profile.new
     @profile.user=current_user

  end

  # GET /profiles/1/edit
  def edit
    @hash_object={1 => "Lumayan", 2 => "Bagus", 3=> "Sangat Bagus" }
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user=current_user

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
=begin
    @profile = Profile.find(params[:id])
    authorize @profile
    if @profile.update(profile_params)
      #redirect_to @profile
      render :edit, notice: "Profile blah"
    else
      render :edit
    end
=end


    authorize @profile
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:name, :user_id, :id_no, :nationality, :tribe, 
        :birth_place, :birth_date, :age, :height, :weight, :blood, :sex, :married, :religion, 
        :id_address, :current_address, :email, :phone, :mobile_phone, 
        languages_attributes: [:id, :name, :speech, :reading, :writing, :note, :_destroy],
        families_attributes: [:id, :name, :phone, :address, :birth_date, :relation, :education, :job, :_destroy],
        travellings_attributes: [:id, :country, :start_date, :end_date, :objective, :_destroy],
        organizations_attributes: [:id, :name, :field, :location, :year, :position, :_destroy],
        scientific_works_attributes: [:id, :title, :notes, :_destroy],
        achievements_attributes: [:id, :name, :notes, :_destroy],
        job_experiences_attributes: [:id, :company_name, :company_address, :company_phone, :job_title, :start_date, :end_date, :job_description, :reason_of_resignation, :_destroy],
        formal_educations_attributes: [:id, :name, :level, :start_date, :end_date, :certificate, :faculty, :department, :notes, :_destroy],
        trainings_attributes: [:id, :name, :organizer, :location, :year, :certificate, :notes, :_destroy]
        )
    end
end
