class Todo < ActiveRecord::Base
  scope :by_user, -> (email) { where(email: email) }
end
