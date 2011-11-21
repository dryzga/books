Given /^I have books titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Book.create!(:title => title)
  end
end

When /^I go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^I should see "([^\"]*)"$/ do |text|
  page.should have_content(text)
end

Given /^I have no books$/ do
  Book.delete_all
end

Given /^I am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^I follow "([^\"]*)"$/ do |link|
  click_link(link)
end

When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
  fill_in(field, :with => value) 
end

When /^I press "([^\"]*)"$/ do |button|
  click_button(button)
end

Then /^I should have ([0-9]+) books?$/ do |count|
  Book.count.should == count.to_i
end
