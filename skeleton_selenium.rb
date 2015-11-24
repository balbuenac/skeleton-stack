require "selenium-webdriver"
require "rspec"

describe "File Upload Example" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
  end

  after(:each) do
    @driver.quit
  end

  it "search text on google" do
    filename = 'some-file.txt'
    file = File.join(Dir.pwd, filename)

    @driver.get 'http://the-internet.herokuapp.com/upload'
    @driver.find_element(id: 'file-upload').send_keys file
    @driver.find_element(id: 'file-submit').click

    uploaded_file = @driver.find_element(id: 'uploaded-files').text
    expect(uploaded_file).to eql filename
  end

end
