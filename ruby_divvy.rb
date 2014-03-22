require 'open-uri'
require 'json'


#simple start to print the total number of Divvy bikes available at each station
json_data = open('http://www.divvybikes.com/stations/json/').read
data = JSON.parse(json_data)

dataArray = data['stationBeanList']

for i in dataArray
	bikesAvailable = i['totalDocks'] - i['availableDocks']
	# puts "the available docks are #{i['availableDocks']}"
	# puts "the total docks are #{i['totalDocks']}"
	stationId = i['id']
	puts "The number of available bikes at stationId #{stationId} is #{bikesAvailable}"
end

