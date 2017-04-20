class ProfilePolicy
  #class Scope < Scope
  #  def resolve
  #    #scope.where(published: true).or(scope.where(user_id: @user.try(:id)))
  #    scope.where(user_id: @user.try(:id))
  #  end
  #end
=begin
  def new? ; user_is_owner_of_record? ; end
  def create? ; user_is_owner_of_record? ; end

  def show?
    #user_is_owner_of_record? || @record.published

  end

  def update? ; user_is_owner_of_record? ; end
  def destroy? ; user_is_owner_of_record? ; end

  private

  def user_is_owner_of_record?
    @user == @record.user
  end
=end

  attr_reader :user, :profile

  def initialize(user, profile)
    @user = user
    @profile = profile
  end


  def show?
   user == profile.user
  end

  def update?
   #user.owner?
   #false
   user == profile.user
   # user.admin? or not post.published?
  end


end