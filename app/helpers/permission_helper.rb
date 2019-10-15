module PermissionHelper

  def isAdmin?
    user_signed_in? && current_user.role == 'admin'
  end

  def isCrushAuthor?
    current_user == @crush.user
  end

  def isNotCrushAuthor?
    current_user != @crush.user
  end

end
