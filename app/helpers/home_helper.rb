module HomeHelper
  def user_avatar
    image_tag current_user.avatar, class: 'rounded-circle' if current_user.avatar.attached?
  end
end
