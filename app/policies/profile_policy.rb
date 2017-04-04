class ProfilePolicy
  attr_reader :user, :profile

  def initialize(user, profile)
    @user = user
    @profile = profile
  end

  def index?
    user.admin?
  end

  def show?
    user.admin? or user.profile==@profile
  end

  def update?
    @user.admin?
  end

  def destroy?
    return false if @current_user == @user
    @current_user.admin?
  end

end
