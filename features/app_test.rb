require 'rubygems'  
require 'appium_lib'
require 'byebug'

APP_PATH = './AUT.apk'

desired_caps = {
   caps:  {
        platformName:  'Android',
        platformVersion: '6.0',
        deviceName:    'nexus6',
        app: APP_PATH
    }
}

puts 'Setting environment to test...'
appium_driver = Appium::Driver.new(desired_caps)
selenium_driver = appium_driver.start_driver
Appium.promote_appium_methods Object
appium_driver.driver.manage.timeouts.implicit_wait = 20

email_element = find_element(:id, "com.example.mkim.aut:id/email")
email_element.send_keys "success@envato.com"
puts 'Email was wrote'

password_element = find_element(:id, "com.example.mkim.aut:id/password")
password_element.send_keys "password"
puts 'Password was wrote'

sign_in_button = find_element(:id, "com.example.mkim.aut:id/email_sign_in_button")
sign_in_button.click
puts 'Sign in button was clicked!'

login_success = find_element(:id, "com.example.mkim.aut:id/login_success")
fail ("Login was failed!") unless login_success.text == "Login Success!"

driver_quit
puts 'Tests Succeeded!'