When(/^I am on Appimation login page/) do
  visit('/')
  if find(:button, 'start_button').visible?
    puts "Try now button found"
  end

  if find(:button, 'signup-b').visible?
    puts "Signup button found"
  end

  if find(:xpath, '//h2[contains(text(), "Contact Us")]/parent::section').visible?
    puts 'Contact Us found'
  end

  if find(:xpath, '//*[@id="name"]').visible?
    puts "Name field found"
  end

  if find(:xpath, '//*[@id="email"]').visible?
    puts "Email field found"
  end

  if find(:xpath, '//*[@id="contactus-message"]').visible?
    puts "Message field found"
  end

  if find(:xpath, '//*[@id="contactus-button"]').visible?
    puts "Send button found"
  end

  all(:xpath, '//section[@class="box special features"]/descendant::section').each do |elem|
    puts elem
  end
end
