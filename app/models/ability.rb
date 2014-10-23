class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here.
    #
    user ||= User.new # guest user (not logged in)

    unless user.new_record?
      can :create, Service
      can :manage, Service do |service|
        service.user == user
      end
    end
  end
end
