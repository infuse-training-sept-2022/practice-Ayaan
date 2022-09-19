#Automate a website taking advantage of many selenium functions
#Adding and removing product
require 'selenium-webdriver'

# Setting driver path for web browser
Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
options = Selenium::WebDriver::Chrome::Options.new(args: ['--start-maximized'])
driver = Selenium::WebDriver.for :chrome, options: options

driver.get 'https://www.amazon.com/'

searchbox_id = 'twotabsearchtextbox'
searchbox = driver.find_element(:id, searchbox_id)

searchbox.click
searchbox.send_keys 'Ferrero Rocher Collection, Fine Hazelnut Milk Chocolates, 48 Count, Gift Box, Assorted Coconut Candy and Chocolates, 18.2 oz'
searchbox.send_keys(:enter)

product_xpath = '//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div[2]/div[1]/h2/a/span'
product = driver.find_element(:xpath, product_xpath)
product.click

buyoption_xpath = '//*[@id="buybox-see-all-buying-choices"]/span'
buyoption = driver.find_element(:xpath, buyoption_xpath)
buyoption.click

sleep(5)

addtocart_xpath = '//*[@id="a-autoid-2-offer-1"]/span/input'
addtocart = driver.find_element(:xpath, addtocart_xpath)
addtocart.click

closebttn_xpath = '//*[@id="aod-close"]/span/span/i'
closebttb = driver.find_element(:xpath, closebttn_xpath)
closebttb.click

sleep(10)

checkcart_xpath = '//*[@id="nav-cart-text-container"]/span[2]'
checkcart = driver.find_element(:xpath, checkcart_xpath)
checkcart.click

sleep(10)

checkquantity_xpath = '//*[@id="a-autoid-0-announce"]'
checkquantity = driver.find_element(:xpath, checkquantity_xpath)
checkquantity.click

sleep(10)

remove_xpath = '//*[@id="quantity_0"]'
remove = driver.find_element(:xpath, remove_xpath)
remove.click

sleep(10)

driver.quit