#Write a script to move the horizontal slider and get the slider range value
require 'selenium-webdriver'

# Setting driver path for web browser
Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
options = Selenium::WebDriver::Chrome::Options.new(args: ['--start-maximized'])
driver = Selenium::WebDriver.for :chrome, options: options

driver.navigate.to 'https://www.globalsqa.com/demo-site/sliders/#Steps'

#driver.switch_to.frame '//*[@id="post-2673"]/div[2]/div/div/div[3]/p/iframe'
driver.switch_to.frame driver.find_element(:xpath, '//*[@id="post-2673"]/div[2]/div/div/div[3]/p/iframe')

sleep(5)
#driver.switch_to.default_content

slider_xpath = '//*[@id="slider"]/span'
slider = driver.find_element(:xpath, xpath)


slider.send_keys(:arrow_right)

sleep(15)

driver.quit