# Write a script to click a button.
require 'selenium-webdriver'

# Setting driver path for web browser
Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
options = Selenium::WebDriver::Chrome::Options.new(args: ['--start-maximized'])
driver = Selenium::WebDriver.for :chrome, options: options

#Go to website
driver.navigate.to 'https://demo.automationtesting.in/Register.html'

click_button = 'submitbtn'

button = driver.find_element(:id, click_button)

button.click
sleep(5)

driver.quit