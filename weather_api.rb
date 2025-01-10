# find an 'endpoint', URL with json
# "It is currently 21 degrees and cloudy in Chicago"
p "Do you want to search for a forecast?" 
user_input_end = gets.chomp
while user_input_end == "yes"
  p "Name a city or enter 'no' to end the program"
  user_input_city = gets.chomp
  require 'http'

  p "What temperature unit do you prefer? (C or F)"
  user_input_temp = gets.chomp.upcase

  if user_input_temp == "F"
    response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{user_input_city}&appid=537bc3124e3fd9257c37473132b04d21&units=imperial")
  elsif user_input_temp == "C"
    response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{user_input_city}&appid=537bc3124e3fd9257c37473132b04d21&units=metric")
  end


  weather_data = response.parse

  city_temperature = weather_data['main']['temp']
  city = weather_data['name']
  weather_description =  weather_data['weather'][0]['description']
  feels_like = weather_data['main']['feels_like']
  wind_speed = weather_data['wind']['speed']

  p "It is currently #{city_temperature} degrees #{user_input_temp} and #{weather_description} in #{city}. The wind speed is #{wind_speed} mph. It feels like #{feels_like} degrees #{user_input_temp}."
end
