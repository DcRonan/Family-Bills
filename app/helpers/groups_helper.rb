module GroupsHelper
  def group_img(group)
    if group.avatar.attached?
      image_tag group.avatar
    elsif !group.avatar.attached?
      image_tag 'folder.png', alt: 'folders icon'
    end
  end

  def group_img_show
    if @group.avatar.attached?
      image_tag @group.avatar, class: 'mr-2'
    elsif !@group.avatar.attached?
      image_tag 'folder.png', alt: 'folders icon', class: 'mr-2'
    end
  end
end
