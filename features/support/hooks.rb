def set_selenium_window_size(width, height)
  window = Capybara.current_session.driver.browser.manage.window
  window.resize_to(width, height)
end

Before do
  Capybara.register_driver :selenium do |app|
    case ENV['BROWSER']
      when 'ie', 'IE'
        Capybara::Selenium::Driver.new(app, :browser => :ie)
      when 'ff'
        Capybara::Selenium::Driver.new(app, :browser => :ff)
      when 'chrome'
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
       else
        Capybara::Selenium::Driver.new(app, :browser => :ff)
      end
    end

end
