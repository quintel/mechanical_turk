# Mechanical Turk

Inspired on [The Turk](http://en.wikipedia.org/wiki/The_Turk)

## Vision

In stead of pulling a slider as a person, we can let Rspec do that. We define
what we expect, e.g.:

````ruby
@scenario.new 'nl', 2040
@scenario.increase_slider "coal power plant", 1
@scenario.increase("co2").should be > 10 #Mton

````

Of course we can run these specs against all

### Run the tests

* Run all the specs using:

`rspec spec/.`


