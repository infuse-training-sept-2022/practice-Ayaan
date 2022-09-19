# Write a script to get acell value of a table
require 'selenium-webdriver'

# Setting driver path for web browser
Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
options = Selenium::WebDriver::Chrome::Options.new(args: ['--start-maximized'])
driver = Selenium::WebDriver.for :chrome, options: options

driver.get 'https://the-internet.herokuapp.com/tables'

table = driver.find_element(:id, 'table1')
rows = driver.find_elements(:tag_name,'tr')

puts rows[2].find_elements(:tag_name,'td')[2].text

sleep(5)

driver.quit