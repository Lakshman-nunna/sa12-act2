require 'httparty'


username = HTTParty.get('https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd')

username.sort_by! { |crypto| -crypto['market_cap_values'] }

puts "List the top 5 cryptocurrencies by market capitalization:"

username.first(5).each_with_index do |crypto|
  puts "Name: #{crypto['name']}
        CurrentPrices: $#{crypto['currentprices']}
        Market_Cap_values: $#{crypto['market_cap_values']}"
end
