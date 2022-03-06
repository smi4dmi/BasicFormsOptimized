require 'selenium-webDriver'
require 'rspec'

describe 'buttons' do
  it 'actions with buttons' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/buttons'
    primary_button = driver.find_element(class: 'btn-primary').click
    success_button = driver.find_element(class: 'btn-success').click
    info_button = driver.find_element(css: '.btn.btn-lg.btn-info').click
    warning_button = driver.find_element(css: '.btn.btn-lg.btn-warning').click
    danger_button = driver.find_element(class: 'btn-danger').click
    link_button = driver.find_element(css: '.btn.btn-lg.btn-link').click
    left_button = driver.find_element(xpath: '/html/body/div/form/div[2]/div/div/div/button[1]').click
    middle_button = driver.find_element(xpath: '/html/body/div/form/div[2]/div/div/div/button[2]').click
    right_button = driver.find_element(xpath: '/html/body/div/form/div[2]/div/div/div/button[3]').click
    button_1 = driver.find_element(xpath: '/html/body/div/form/div[3]/div/div/div/button[1]').click
    button_2 = driver.find_element(xpath: '/html/body/div/form/div[3]/div/div/div/button[2]').click
    drop_down_button = driver.find_element(id: 'btnGroupDrop1').click
     drop_down_link_1 = driver.find_element(link_text: 'Dropdown link 1').click
    driver.quit
  end
end
