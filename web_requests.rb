require 'http'

response = HTTP.get("https://maps.dsm.city/host/rest/services/Hosted/Trails/FeatureServer/0/query?outFields=*&where=1%3D1&f=geojson")
trails = response.parse(:json)


# find all trails under .5 miles
p "enter the maximum distance that you want to walk"
user_input = 0.5
selected_trail = []
p trails.keys

# trails.each do |trail|
#   p trail
#   if trails['lengthmile'] == user_input
#     selected_trail << trail
#   end
# end

# selected_trail.each do |trail|
#   p "You can visit the #{trail['name']} and it's located at #{trail['name']}"
# end