# Write a script to get a particular column in table
require 'selenium-webdriver'

# Setting driver path for web browser
Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
options = Selenium::WebDriver::Chrome::Options.new(args: ['--start-maximized'])
driver = Selenium::WebDriver.for :chrome, options: options

driver.get 'https://computer-database.gatlicomputersng.io/'

table = driver.find_element(:class, 'computers')
rows = driver.find_elements(:tag_name,'tr')

for i in 1..10
    puts rows[i].find_elements(:tag_name,'td')[0].text
end

sleep(5)

driver.quit