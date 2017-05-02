When(/^I am on Appimation home page/) do
  visit('/')
  find(:id, 'start_button').visible?
  find(:id, 'login-b').visible?
  find(:id, 'signup-b').visible?
end

Then(/^I click Try Now/) do
  find(:id, 'start_button').click
end

Then(/^I enter (.*) in SignUp email/) do |email|
  find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "login"]').send_keys email
end

Then(/^I enter (.*) in SignUp passwords/) do |password|
  find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]').send_keys password
  find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]').send_keys password
end

Then(/^I enter (.*) in SignUp project name/) do |name|
  find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]').send_keys name
end

Then(/^I cancel SignUp/) do
  find(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]').click
end

When(/^I open login form$/) do
  find(:id, 'login-b').click
  find(:xpath, '//div[@id = "login"]/descendant::input[@name = "login"]').visible?
  find(:xpath, '//div[@id = "login"]/descendant::input[@name = "password"]').visible?
  find(:xpath, '//div[@id = "login"]/descendant::button[contains(@class,"button")]').visible?
end

When(/^I enter (.*) in Login email$/) do |email|
  find(:xpath, '//div[@id = "login"]/descendant::input[@name = "login"]').send_keys email
end

When(/^I enter (.*) in Login password$/) do |password|
  find(:xpath, '//div[@id = "login"]/descendant::input[@name = "password"]').send_keys password
end

When(/^I click Login button$/) do
  find(:xpath, '//div[@id = "login"]/descendant::button[contains(@class,"button")]').click
end

Then(/^I Validate successful login$/) do
  find(:xpath, '//div[@id = "testDataTitle"]').visible?
  find(:xpath, '//div[@id = "projectTitle"]').visible?
  find(:xpath, '//div[@id = "logoutButton"]').visible?
  find(:xpath, '//div[@id = "stepMainView"]').visible?
end
