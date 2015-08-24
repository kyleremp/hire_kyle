Feature: Jobs Page
	In order to find a job
	As an visitor to your site
	I want to browse job postings

	Scenario: Viewing Jobs page
		Given there are 4 jobs
		And there is a job titled: "Cat Wrangler" with description: "Must be spry and scratch-resistant."
		When I am on the jobs page
		Then I should see 4 jobs
		And I should see the title and description for each job
		And I should see a link that takes me to the job's application
		And I should see the job description for a "Cat Wrangler"
