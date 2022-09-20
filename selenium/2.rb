# Write a script to navigate to a website and get its title
require 'selenium-webdriver'

# Setting driver path for web browser
Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
options = Selenium::WebDriver::Chrome::Options.new(args: ['--start-maximized'])
driver = Selenium::WebDriver.for :chrome, options: options

driver.get 'https://www.google.com/'
# driver.navigate.to 'https://www.google.com/'

t = driver.title
puts t

sleep(5)

driver.quit