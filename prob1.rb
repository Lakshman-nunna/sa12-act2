require 'httparty'

username = HTTParty.get('https://api.github.com/users/nikhilroxtomar/repos')

count = 0
most_starred_repository = []

most_starred_repository = username.max_by { |repo| repo['stargazers_count'] }


puts "Displaying the name, description, number of stars and URL of the starred repository:"
puts "Name:  #{most_starred_repository['name']}"
puts "Description:  #{most_starred_repository['description']}"
puts "Number of Stars: #{most_starred_repository['stargazers_count']}"
puts "URL:  #{most_starred_repository['html_url']}"
