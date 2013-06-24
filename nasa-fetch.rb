require 'net/http'
require 'uri'

# Settings
@user = 'bart'  # Your mac username, /Users/example/ <- example in this case

def open(url)
  Net::HTTP.get(URI.parse(url))
end

# Dirty, but hey, it's a hack, just plain Ruby, yeah!
rss = open('http://www.nasa.gov/rss/lg_image_of_the_day.rss')
image = rss.split('<url>http://www.nasa.gov/images/content/')[1].split('</url>')[0]
url = "http://www.nasa.gov/images/content/#{image}"

File.open("/Users/#@user/Pictures/nasa-wallpaper.jpg", 'w+') { |file| file.write(open(url)) }

`defaults write com.apple.desktop Background '{default = {ImageFilePath = "/Users/#@user/Pictures/nasa-wallpaper.jpg"; };}'`

puts 'NASA Wallpaper of the day successfully landed, relogin for effect'