class Todo < ActiveRecord::Base
  scope :by_email, -> (email) { where(email: email) }

  def completed?
    completed_at?
  end
end
