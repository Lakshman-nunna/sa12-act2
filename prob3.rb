require 'httparty'

username = HTTParty.get('http://worldtimeapi.org/api/timezone/Europe/London')

time_zone = Time.parse(username.parsed_response['datetime']).strftime('%Y-%m-%d %H:%M:%S')

puts "The current time in Europe/London is #{time_zone}"
