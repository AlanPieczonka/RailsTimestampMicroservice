## Timestamp Microservice in Ruby on Rails
### One of the FreeCodeCamp's Backend Projects

**User:**

* can pass a string as a parameter, and it will check to see whether that string contains either a unix timestamp or a natural language date (example: January 1, 2016).
* If it does, it returns both the Unix timestamp and the natural language form of that date.
* If it does not contain a date or Unix timestamp, it returns null for those properties.



##### I know that Ruby On Rails is probably an overkill for this kind of job, but hey, who cares ;)
##### I think these small FreeCodeCamp's projects are just amazing. It's something that you can do over the weekend and still have big satisfaction. It's also great way to practice writing tests (in this case with the help of RSpec)


### Installation & Running:
	git clone https://github.com/AlanPieczonka/RailsTimestampMicroservice.git
	cd RailsTimestampMicroservice
	bundle install
	rails s
### Running tests: 
	bundle exec rspec