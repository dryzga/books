require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /^I have books titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Book.create!(:title => title)
  end
end

When /^I go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^I should see "([^\"]*)"$/ do |text|
  response.should contain(text)
end
