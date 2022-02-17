module ApplicationHelper
  def admin?
    current_user.has_role?(:admin)
  end

  def user?
    current_user.has_role?(:user)
  end
end
