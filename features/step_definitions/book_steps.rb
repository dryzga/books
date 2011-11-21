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
