# Write a script to select a checkbox, radio button.
require 'selenium-webdriver'

# Setting driver path for web browser
Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
options = Selenium::WebDriver::Chrome::Options.new(args: ['--start-maximized'])
driver = Selenium::WebDriver.for :chrome, options: options

#Go to website
driver.navigate.to 'https://demo.automationtesting.in/Register.html'

checkbox_id = "checkbox1"
clickCheckbox =driver.find_element(:id, checkbox_id)
clickCheckbox.click

radiobtn_xpath = '//*[@id="basicBootstrapForm"]/div[5]/div/label[1]/input'
radiobtn =driver.find_element(:xpath,radiobtn_xpath)
radiobtn.click

sleep(5)

driver.quit