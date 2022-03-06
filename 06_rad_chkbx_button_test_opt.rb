require 'selenium-webdriver'
require 'rspec'

describe 'radio and checkbox' do
  it 'radio and checkbox' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/radiobutton'
    radio_btn1 = driver.find_element(id: 'radio-button-1').click
    radio_btn2 = driver.find_element(css: 'input[value="option2"]').click
    radio_btn3 = driver.find_element(xpath: '/html/body/div/div[3]/input').click

    #checkbox button
    driver.navigate.to 'https://formy-project.herokuapp.com/checkbox'
    chkbx_button1 = driver.find_element(id: 'checkbox-1').click
    chkbx_button2 = driver.find_element(css: 'input[value="checkbox-2"]').click
    chkbx_button3 = driver.find_element(xpath: '//*[@id="checkbox-3"]').click
    driver.quit
  end
end
