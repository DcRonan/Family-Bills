module HomeHelper
  def user_avatar
    if current_user.avatar.attached?
      image_tag current_user.avatar, class: 'rounded-circle'
    end
  end
end
