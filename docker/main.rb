require 'selenium-webdriver'
require 'webdrivers'


module Myntra
    class Shopping
        attr_accessor :driver , :option
        def create_a_instance
            @option = options = Selenium::WebDriver::Chrome::Options.new(args: ['--headless','--no-sandbox','--disable-dev-shm-usage'])
            @driver = driver = Selenium::WebDriver.for :chrome, options: options
            # @driver.manage.window.resize_to(1920, 1080)
        end

        def navigate_to_website
            driver.get 'https://www.myntra.com/'
            puts driver.manage.window.size

            puts 'Entered the website'
        end

        # def login
        #     # profile_xpath = '//*[@id="desktop-header-cnt"]/div[2]/div[2]/div/div[1]/span[2]'
        #     # profile = driver.find_element(:xpath, profile_xpath)
        #     # driver.action.click(profile).perform
        #     sleep(100)
        #     sleep(2)
            
        #     # login_xpath = '//*[@id="desktop-header-cnt"]/div[2]/div[2]/div/div[2]/div[2]/div[2]/div[1]/a'
        #     # login = driver.find_element(:xpath, login_xpath)
        #     # driver.action.click(login).perform

        #     # cred_xpath = '//*[@id="reactPageContent"]/div/div/div[2]/div[2]/div[1]/input'
        #     # cred = driver.find_element(:xpath, cred_xpath)
        #     # cred.click

        #     # cust_num = '8668856188'
        #     # len = cust_num.length

        #     # for i in 0..len
        #     #     cred.send_key cust_num[i]
        #     #     sleep(1)
        #     # end 
            

        #     # submit_cred_xpath = '//*[@id="reactPageContent"]/div/div/div[2]/div[2]/div[3]'
        #     # submit_cred = driver.find_element(:xpath, submit_cred_xpath)
        #     # submit_cred.click

        #     sleep(5)
        # end

        def seachbox
            
            searchbox_class = 'desktop-searchBar'
            searchbox = driver.find_element(:class, searchbox_class)
            searchbox.click
            sleep(5)
            
            searchbox.send_keys 'Football'
            searchbox.send_keys(:enter)
            puts 'Entered thr product name'
        end

        def get_product
            product_xpath = '//*[@id="desktopSearchResults"]/div[2]/section/ul/li[1]/a/div[2]'
            product = driver.find_element(:xpath, product_xpath)
            product.click
            sleep(10)
            puts 'Got the product on the screen'

            #product.send_keys(:control,:tab)
        end

        def switch_tab
            driver.window_handles.each do |handle|
                driver.switch_to.window handle
            end

            puts 'Switched the Tab'
        end

        def adding_to_bag
            addtobag_btn_xpath = '//*[@id="mountRoot"]/div/div/div/main/div[2]/div[2]/div[2]/div[2]/div/div[1]'
            addtobag_btn = driver.find_element(:xpath, addtobag_btn_xpath)
            driver.action.click(addtobag_btn).perform
            sleep(10)

            puts 'The product was added to the bag'
        end

        def check_bag
            bag_xpath = '//*[@id="desktop-header-cnt"]/div[2]/div[2]/a[2]/span[3]'
            bag = driver.find_element(:xpath, bag_xpath)
            bag.click

            puts 'Checking the bag and displaying the products'
        end

        def close_browser
            sleep(10)
            driver.quit

            puts 'Closing the browser'
        end
    end    
end

item = Myntra::Shopping.new
item.create_a_instance
item.navigate_to_website
# item.login
item.seachbox
item.get_product
item.switch_tab    
item.adding_to_bag
item.check_bag
item.close_browser


