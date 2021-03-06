class Quote < ActiveRecord::Base
  validates :quip, presence: true, length: {minimum: 3}, uniqueness: true

  # Creating a recent scope that gives items created within the last week.  The lamda will freshly run every time the scope is called.
  scope :recent, -> (weeks_past=1) {where("created_at > ?", weeks_past.weeks.ago)}
end
