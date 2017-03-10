class Job < ActiveRecord::Base
  validates :poster, :location, :status, :category, presence: true
  validate :status_must_be_new_pending_complete

  def status_must_be_new_pending_complete
    valid_statuses = ['new', 'pending', 'complete']
    validates_inclusion_of :status, :in => valid_statuses
  end

end
