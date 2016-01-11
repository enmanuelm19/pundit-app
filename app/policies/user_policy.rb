class UserPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @model = model
  end

  def index?
    #This is how pundit check
    @current_user.admin?
    #if it is, it's authorized to see the index page
  end
end
