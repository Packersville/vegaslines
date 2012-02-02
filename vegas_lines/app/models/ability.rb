class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    
    if user.admin?
      can :manage, :all
    end
    if user.admin == false
      can :manage, Line
      can :read, Year
      can :read, Week
    end 
  end
end