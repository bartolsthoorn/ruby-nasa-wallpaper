# NASA Image Of The Day
Quick hack in Ruby for Mac OS X! It sets the [NASA image of the day](http://www.nasa.gov/multimedia/imagegallery/iotd.html) as the wallpaper.

Install it like so:

```bash
cd ~/Pictures
git clone https://github.com/bartolsthoorn/ruby-nasa-wallpaper.git
mv ruby-nasa-wallpaper/nasa-fetch.rb nasa-fetch.rb
mv ruby-nasa-wallpaper/nasa-set.sh nasa-set.sh
nano nasa-fetch.rb
# Change @user = 'bart' to your username
ruby nasa-fetch.rb
rm -rf ruby-nasa-wallpaper
# Adding to startup to refresh automatically
sudo launchctl submit -l nasa_image_ruby -- ruby ~/Pictures/nasa-fetch.rb
```