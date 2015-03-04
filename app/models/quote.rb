class Quote < ActiveRecord::Base
  # Creating a recent scope that gives items created within the last week.
  scope :recent, -> {where("created_at > ?", 1.week.ago)}
end
