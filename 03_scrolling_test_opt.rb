require 'selenium-webdriver'
require 'rspec'

describe 'scroll page' do
  it 'just scrolling' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/scroll'
    full_name = driver.find_element(id: 'name').send_keys('Dmitriy Smirnov')
    date_of_birth = driver.find_element(id: 'date').send_keys('01/02/1990')
    driver.quit
  end
end
