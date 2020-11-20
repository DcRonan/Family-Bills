class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def created_at
    attributes['created_at'].strftime('%d %b %Y')
  end

  def time_created_at
    attributes['created_at'].strftime('%d %b %Y at %I:%M %P')
  end
end
