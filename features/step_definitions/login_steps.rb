When(/^I am on Appimation login page/) do
  visit('/')
  find(:button, 'start_button').visible?
  puts "Try now button found"

  find(:button, 'signup-b').visible?
  puts "Signup button found"

  find(:xpath, '//h2[contains(text(), "Contact Us")]/parent::section').visible?
  puts 'Contact Us found'

  find(:xpath, '//*[@id="name"]').visible?
  puts "Name field found"

  find(:xpath, '//*[@id="email"]').visible?
  puts "Email field found"

  find(:xpath, '//*[@id="contactus-message"]').visible?
  puts "Message field found"

  find(:xpath, '//*[@id="contactus-button"]').visible?
  puts "Send button found"

  all(:xpath, '//section[@class="box special features"]/descendant::section').each do |elem|
    puts elem
  end
end
