require 'selenium-webdriver'
require 'rspec'

describe 'drop down menu' do
  it 'drop down menu' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/dropdown'
    drop_down_btn = driver.find_element(id: 'dropdownMenuButton').click
    menu_item_buttons = driver.find_element(link_text: 'Buttons').click
    driver.navigate.to 'https://formy-project.herokuapp.com/dropdown'
    drop_down_btn = driver.find_element(id: 'dropdownMenuButton').click
    menu_item_file_upload = driver.find_element(xpath: '/html/body/div/div/div/a[8]').click
    driver.quit
  end
end
