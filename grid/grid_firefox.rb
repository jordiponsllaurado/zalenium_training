require 'watir'
browser = Watir::Browser.new :firefox, url: "http://172.23.1.25:4444/wd/hub"
browser.goto 'google.com'
search_field = browser.text_field name: 'q'
search_field.set 'Hello World!'
browser.send_keys :enter
# Just to see the browser
sleep 5
puts browser.title
# => 'Hello World! - Google Search'
browser.quit    