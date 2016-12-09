require 'rubygems'  
require 'appium_lib'
require 'byebug'


desired_caps = {
   caps:  {
        platformName:  'Android',
        platformVersion: '6.0',
        deviceName:    'nexus6',
        appActivity: '.Settings',
        appPackage: 'com.android.settings'
    }
}

appium_driver = Appium::Driver.new(desired_caps)
selenium_driver = appium_driver.start_driver
Appium.promote_appium_methods Object

scroll_to('About ').click
android_version = 'Android version'
scroll_to android_version

view    = 'android.widget.TextView'
version = xpath(%Q(//#{view}[preceding-sibling::#{view}[@text="#{android_version}"]])).text
valid   = !version.match(/\d/).nil?

puts "Version is: #{version}"
fail "Wrong Android version" unless true == valid

driver_quit
puts 'Tests Succeeded!'