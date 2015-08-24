Feature: Apply for a Job
	In order to apply for a job
	As a visitor
	I need to submit an application

	Scenario: View Application
		Given that there is a job titled: "Sheep Herder"
		When I visit the application page for that job it should contain the title "Sheep Herder"
		Then I should see the application form

