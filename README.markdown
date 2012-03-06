# Mechanical Turk

Inspired on [The Turk](http://en.wikipedia.org/wiki/The_Turk)

## Vision

In stead of pulling a slider as a person, we can let Rspec do that. We define
what we expect, e.g.:

````ruby
@scenario.new 'nl', 2040
@scenario.increase_slider "coal power plant", 1
@scenario.increase("co2").should be == 1.05 #Mton
````

### Expectations

You can define that the outcome of the scenario is exactly a number, but more
usefull is that you can specify that an outcode of the model (e.g. "Co2")
increases with a certain value.

Furthermore, you can specify that an outcome increases/decreases with at 
**least** or **maximal** a certain number.

````ruby
@scenario.increase("import).should be > 0.03 #percent
````

Of course we can run these specs against all

### How to run the tests

* Run all the specs using: `rspec spec/.`

### Conventions

