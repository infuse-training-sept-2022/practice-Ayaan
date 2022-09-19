# Write a script to get the content of dropdown list
require 'selenium-webdriver'

# Setting driver path for web browser
Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
options = Selenium::WebDriver::Chrome::Options.new(args: ['--start-maximized'])
driver = Selenium::WebDriver.for :chrome, options: options

driver.navigate.to 'https://letcode.in/forms'

dropdown_xpath = '/html/body/app-root/app-forms/section[1]/div/div/div[1]/div/div/form/div[2]/div[2]/div/div/div/select'
dropdown = driver.find_element(:xpath, dropdown_xpath)
#rows = options.find_element(:xpath, dropdown_xpath)
#all_rows = rows[40]
data = dropdown.find_elements(:tag_name, 'option')
data.each {
    |data| puts data.text
}

sleep(5)

driver.quit