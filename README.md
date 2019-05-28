# README

### Problem Statement ###

We want to collect patient-reported outcomes from patients in real time, so that we can achieve a better understanding of their real world experience with their illness.
#### Notes: ####

 * Question have a 120 character limit for question_text field.
 * Survey have a 50 character limit for name field & 1000 character
   limit for description field.
 * Response of a question have a 100 character limit for answer field. 
 * These limits can be updated in db/migrate folder as needed.
 

#### Tasks: ####

 * Design and implement a basic survey system for patients.

 * Create a library of surveys with questions that accept a text response (eg. "How do you feel today? Did you take your medications? etc.”).

 * Then create users that can be assigned to different surveys.

 * Once the back end is set up, create a basic front end (using Rails ERB or any JS framework) for a user to access surveys assigned to them and submit responses to the questions.

### Development Environment ###

* Any IDE
* Ruby >= 2.5.1
* Bundler
* Docker (https://store.docker.com/search?type=edition&offering=community)

PostgreSQL: If you have a local installation of PostgreSQL and it is running please stop it to avoid port conflicts, and use following command to run pre-configured PostgreSQL:

* docker-compose up -d db

Survey Management application:

In Terminal / Command Line, move to this directory (The directory containing README.md) and run the following commands:
* bundle install
* rake db:create
* rake db:migrate
* rake db:seed
* rails s

You can then access the main survey admin application by hitting /admin
in browser.

There is also a respondent application running as another activeadmin
namespace and is accessible at /respondent_portal.

Surveys will be created on /admin application and then would be filled
in on /respondent_portal application.

Seeding would provide 2 users. 
1. admin@example.com, password => user for /admin application
2. respondent@example.com, password => user for /respondent_portal
   application
