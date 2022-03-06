require 'selenium-webdriver'
require 'rspec'

describe 'browser tab' do
  it 'switching browser tab' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/switch-window'
    new_tab = driver.find_element(id: 'new-tab-button').click
    driver.switch_to.window(driver.window_handles[1])
    driver.switch_to.window(driver.window_handles[0])
    alert_btn = driver.find_element(id: 'alert-button').click
    driver.switch_to.alert.accept
    driver.quit
  end
end
