class Todo < ActiveRecord::Base
  scope :by_email, -> (email) { where(email: email) }
end
