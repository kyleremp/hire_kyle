# hire_kyle
Job candidacy assignment - build a simple app in Ruby on Rails

This is a basic app with functionality that allows anonymous visitors to view a list of job postings and apply to those positings by filling out an application form and attaching a resume and cover letter. 

It also provides Admin Users the ability to create and update job titles and descriptions as well as view the candidates that are associated with particular jobs, and download their resumes and cover letters. 

In its current state, the application offers little polish. Enhancements could include: a module designed to create and manage admin users, improved styling, use of form helper methods, and more. 

On that note, in order to gain access to the Admin User portions of the application, one will have to manually create an Admin User via the "rails c" command. 
@your_user = AdminUser.create(:name => "Your Name", :username => "yourusername", :email => "youruser@email.com", :password => "yourpassword")

*Note, I am using Rails' built-in blowfish encryption, so entering a value for :password in the console will automatically encrypt it upon save. When you go to login on the app, the built-in authentication will be able to match your entered password against the stored hash. 

Once a user has been created, you can use the application to create and update jobs (delete is pending). Once jobs are created, you can enter candidate information into the application form, upload documents, and then view candidates by job through the the job list/management screen. 

In regards to testing, I made an attempt to write a few features and step definitions with Cucumber. 
