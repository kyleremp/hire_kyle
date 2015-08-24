#Capybara/rspec matchers: http://www.rubydoc.info/github/jnicklas/capybara/Capybara/RSpecMatchers

Given(/^there are (\d+) jobs$/) do |jobs|
   #uninitialized constant -> have to create a model
  	i = 0
  	while i <= jobs.to_i 
  		Job.new()
  		i += 1
  	end
end

Given(/^there is a job titled: "(.*?)" with description: "(.*?)"$/) do |title, description|
  @job = FactoryGirl.create(:job, title: title, description: description)
end

When(/^I am on the jobs page$/) do
	visit 'jobs/'
end

Then(/^I should see (\d+) jobs$/) do |job_count|
  job_count.to_i == Job.all.count

end

Then(/^I should see the title and description for each job$/) do
	@jobs = Job.all
	@jobs.each do |job|
		expect(page).to have_content(job.title)
		expect(page).to have_content(job.description)
	end
end

Then(/^I should see a link that takes me to the job's application/) do 
  @jobs = Job.all
  @jobs.each do |job|
	  expect(page).to have_link("Apply", "get/jobs/#{job.id}/apply")
	end
end

Then(/^I should see the job description for a "(.*?)"$/) do |arg1|
	@cat_wrangler = Job.find_by_title('Cat Wrangler')
  expect(@cat_wrangler.description).to have_content("Must be spry and scratch-resistant.")
end