Given("I visit the page") do
  visit root_path
end

When("I click {string} link") do |string|
  click_link(string)
end

When("I fill in {string} with {string}") do |title, string|
  fill_in(title, :with => string)
end

Then("show me the page") do
  save_and_open_page
end

When("I click {string} button") do |title|
  click_button(title)
end

Then("I should be on {string} page") do |title|
  article = Article.find_by_title(title)
  expect(page.current_path).to eq article_path(article)
end
