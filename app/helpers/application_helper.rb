# rubocop:disable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity

module ApplicationHelper
  def which_page
    if current_page?(transactions_path)
      content_tag :h3, 'ALL', class: 'font-weight-light mt-2'
    elsif current_page?(external_transactions_path)
      content_tag :h3, 'EXTERNAL', class: 'font-weight-light mt-2'
    elsif current_page?(groups_path)
      content_tag :h3, 'GROUPS', class: 'font-weight-light mt-2'
    elsif current_page?(new_transaction_path)
      content_tag :h3, 'NEW BILL', class: 'font-weight-light mt-2'
    elsif current_page?(edit_user_registration_path)
      content_tag :h3, 'EDIT USER', class: 'font-weight-light mt-2'
    elsif current_page?(new_group_path)
      content_tag :h3, 'NEW GROUP', class: 'font-weight-light mt-2'
    end
  end

  def nav_display
    return unless user_signed_in?
    return unless current_user.avatar.attached?

    if current_page?(home_index_path)
      link_to 'Logout', destroy_user_session_path, method: :delete, class: 'nav-link btn bg-green text-white'
    else
      image_tag current_user.avatar, class: 'rounded-circle'
    end
  end
end

# rubocop:enable Metrics/PerceivedComplexity, Metrics/CyclomaticComplexity
