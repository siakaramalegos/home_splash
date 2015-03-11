# Weather forecast API
#require 'forecast_io'

class HomeController < ApplicationController
  def index
    right_now = Time.now
    @current_time = right_now.stamp("12:00")
    @current_date = right_now.stamp("February 1, 2015")

    # Adjust message by time of day
    # Case statement instead of a lot of elsifs
    @greet_message = case right_now.hour
    when 5..11
      "good morning  早安  καλημέρα  صباح الخير  chào buổi sáng  おはよう  buenos días"
    when 12..15
      "good afternoon  下午好  καλημέρα  مساء الخير  xin chào buổi chiều    こんにちは  buenas tardes"
    when 16..19
      "good evening  晚上好  καλησπέρα  مساء الخير  xin chào buổi tối    こんばんは  buena noches"
    when 20..23, 0..4
      "good night  晚安  καληνύχτα  ليلة سعيدة  đêm tốt    おやすみ  buenas noches"
    end

    #forecast = ForecastIO.forecast(37.8267, -122.423)
    #@temp = forecast.currently.temperature
    @quote = Quote.all.sample
    @quip = @quote.quip
    @author = @quote.author

  end


end
