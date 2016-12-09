require 'rubygems'  
require 'appium_lib'

desired_caps = {
   caps:  {
        platformName:  'Android',
        platformVersion: '5.0',
        deviceName:    'nexus6',
        browserName:   'Browser',
    }
}

appium_driver = Appium::Driver.new(desired_caps)
selenium_driver = appium_driver.start_driver

# Con este metodo se logra que para todos los objetos del tipo Object, no se tenga que llamar
# al driver de Appium para hacer acciones x ejemplo para buscar. 
# Ej : @appium_driver.find_element(:id, 'lst-ib')
Appium.promote_appium_methods Object

selenium_driver.get("http://www.google.com/")

text_element = find_element(:id, 'lst-ib')
text_element.click
sleep 5

text_element.send_keys 'Appium and Genymotion using Ruby'
sleep 2

button_element = find_element(:id, 'tsbb')  
button_element.click
sleep(5)

driver_quit
puts 'Tests Succeeded!'