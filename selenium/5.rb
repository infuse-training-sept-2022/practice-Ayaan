#Write a script to use a search engine to find something.
require 'selenium-webdriver'

# Setting driver path for web browser
Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
options = Selenium::WebDriver::Chrome::Options.new(args: ['--start-maximized'])
driver = Selenium::WebDriver.for :chrome, options: options

driver.navigate.to 'https://www.google.com/'

searchbox_xpath = '/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input'
driver.find_element(:xpath,searchbox_xpath).click

text = driver.find_element(:xpath, searchbox_xpath)
text.send_keys 'Iphone 14'
text.send_keys(:enter)

sleep(10)

driver.quit