#Write a script to get table headers
require 'selenium-webdriver'

# Setting driver path for web browser
Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
options = Selenium::WebDriver::Chrome::Options.new(args: ['--start-maximized'])
driver = Selenium::WebDriver.for :chrome, options: options

driver.navigate.to 'https://cosmocode.io/automation-practice-webtable/'

table = driver.find_element(:id, "countries")
rows = driver.find_elements(:tag_name, 'tr')
t_headers = rows[0]

cols = t_headers.find_elements(:tag_name, 'td')
cols.each {
    |col| puts col.text
}

sleep(5)

driver.quit