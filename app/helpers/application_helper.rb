module ApplicationHelper
    def user_avatar(user)
      if user.avatar.attached?
        user.avatar
      else
        "default_image/default-avatar.jpeg"
      end
    end
  end

  