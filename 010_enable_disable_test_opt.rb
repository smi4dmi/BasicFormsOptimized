require 'selenium-webdriver'
require 'rspec'

describe 'enabled and disabled fields' do
  it 'enable and disable' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/enabled'
    dis_field = driver.find_element(id: 'disabledInput').click
    ena_field = driver.find_element(id: 'input').send_keys('Hello World!')
    driver.quit
  end
end
