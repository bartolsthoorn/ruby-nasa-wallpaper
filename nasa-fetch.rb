require 'net/http'
require 'uri'

# Settings
@user = 'bart'  # Your mac username, /Users/example/ <- example in this case

def open(url)
  Net::HTTP.get(URI.parse(url))
end

@timestamp = Time.now.to_i.to_s

# Dirty, but hey, it's a hack, just plain Ruby, yeah!
rss = open('http://www.nasa.gov/rss/lg_image_of_the_day.rss')
image = rss.split('<url>http://www.nasa.gov/images/content/')[1].split('</url>')[0]
url = "http://www.nasa.gov/images/content/#{image}"

File.open("/Users/#@user/Pictures/nasa-wallpaper-#@timestamp.jpg", 'w+') { |file| file.write(open(url)) }

`./nasa-set.sh /Users/#@user/Pictures/nasa-wallpaper-#@timestamp.jpg`

puts 'NASA Wallpaper of the day successfully landed'