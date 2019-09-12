module ApplicationHelper
    def user_avatar(user)
      if user.avatar.attached?
        user.avatar
      else
        "default-image.png"
      end
    end
  end
