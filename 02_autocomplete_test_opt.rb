require 'selenium-webdriver'
require 'rspec'

describe 'autocomplete form' do
  it 'autocomplete the form' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/autocomplete'
    autocomplete = driver.find_element(id: 'autocomplete').send_keys('252')
    driver.manage.timeouts.implicit_wait = 5
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(class: 'pac-item').displayed? }
    autocomplete_result = driver.find_element(class: 'pac-item').click
    driver.quit
  end
end
