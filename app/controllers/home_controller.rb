class HomeController < ApplicationController
  def index
    right_now = Time.now
    @current_time = right_now.to_formatted_s(:short)

    # Adjust message by time of day
    # Case statement instead of a lot of elsifs
    @greet_message = case right_now.hour
    when 5..11
      "Good morning!  Καλημέρα!"
    when 12..15
      "Good afternoon! Καλημέρα"
    when 16..19
      "Good evening!  Καλησπέρα!"
    when 20..23, 0..4
      "Good night.  Καληνύχτα."
    end

  end


end
