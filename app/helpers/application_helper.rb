module ApplicationHelper
    def user_avatar(user)
      if user.avatar.attached?
        user.avatar
      else
        "moon_night.png"
      end
    end
  end
