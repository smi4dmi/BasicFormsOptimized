require 'selenium-webdriver'
require 'rspec'

describe 'uploading a file' do
  it 'file upload' do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to 'https://formy-project.herokuapp.com/fileupload'
    choose_btn = driver.find_element(class: 'btn-choose').click
    choose_field = driver.find_element(id: 'file-upload-field').click
    driver.quit
  end
end
