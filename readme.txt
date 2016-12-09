The testcases utilize Ruby and Cucumber.

Preconditions : 

You need Apium and a virtual device or a real device to test there.
This document can be a help to you, in order to install all the necessary : 

https://github.com/isonic1/appium-workshop/blob/master/Appium%20Windows%20Installation%20Instructions.md

Usage:

1 - Install Ruby (Ruby is supported in Windows, Linux and Mac. In
Linux I recommend to install it via RVM)
2 - Install DevKit if you are using Windows
3 - In your shell/terminal/console, execute this command: "gem install bundler"
4 - Then execute: "bundle install"
5 - To execute the testcase in your console execute this command on /features : 
	- ruby app_test.rb 
	- ruby settings_test.rb
	- ruby web_browser_tests.rb

App_test has a test that install an APK in your device and navigates on the application.
Settings_test opens the settings in your device and navigates through the options
Web_browser_tests opens a browser in your device, loads google and search something there.

If you have any problems running the testcases, please send me an
email at maximiliano.pineyro@abstracta.com.uy