class Todo < ActiveRecord::Base
  scope :by_email, -> (email) { where(email: email) }

  def completed?
    completed_at?
  end

  def complete!
    touch :completed_at
  end

  def mark_incomplete!
    update_column(:completed_at, nil)
  end
end
