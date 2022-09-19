# Write a script to select the i-th dropdown item and return the value
require 'selenium-webdriver'

# Setting driver path for web browser
Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
options = Selenium::WebDriver::Chrome::Options.new(args: ['--start-maximized'])
driver = Selenium::WebDriver.for :chrome, options: options

driver.navigate.to 'https://testpages.herokuapp.com/styled/basic-html-form-test.html'

dropdown_name = 'dropdown'
dropdown = driver.find_element(:name, dropdown_name)

i_th = dropdown.find_elements(:tag_name, 'option')[2].text
puts i_th

sleep(5)

driver.quit