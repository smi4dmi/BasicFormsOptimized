require 'selenium-webdriver'
require 'rspec'

describe 'drag and drop' do
  it 'drag and drop' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/dragdrop'
    dd_item = driver.find_element(id: 'image')
    dd_box = driver.find_element(id: 'box')
    driver.action.drag_and_drop(dd_item, dd_box).perform
    driver.quit
  end
end
