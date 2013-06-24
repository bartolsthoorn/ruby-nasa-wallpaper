# NASA Image Of The Day
Quick hack in Ruby for Mac OS X!

Install it like so

```bash
cd ~/Pictures
git clone ...
mv .../nasa-fetch.rb nasa-fetch.rb
nano nasa-fetch.rb
# Change @user = 'bart' to your username
ruby nasa-fetch.rb
# Adding to startup to refresh automatically
sudo launchctl submit -l nasa_image_ruby -- ruby ~/Pictures/nasa-fetch.rb
```