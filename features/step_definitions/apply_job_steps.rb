Given(/^that there is a job titled: "(.*?)"$/) do |title|
  @job = FactoryGirl.create(:job, :title => title)
end

When(/^I visit the application page for that job it should contain the title "(.*?)"$/) do |title|
	@id = @job.id
	visit '/jobs/' + @id.to_s + '/apply'

	expect(page).to have_content('Application for: ' + title)
end

Then(/^I should see the application form$/) do
  pending # express the regexp above with the code you wish you had
end
