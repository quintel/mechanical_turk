# Mechanical Turk

Inspiration drawn from [The Turk](http://en.wikipedia.org/wiki/The_Turk).

## Vision

In stead of pulling a slider as a person, we can let Rspec do that. We define
what we expect, e.g.: 

````ruby
@scenario.new area:"nl", end_year:2040
@scenario.outcome("co2").value should be == 160.00 #Mton
````
We can set a slider and change the expectation accordingly:

````ruby
@scenario.increase_slider "coal power plant", 3
@scenario.outcome("co2").value should be == 167.05 #Mton
````
We can also increase a slider with a certain value above its starting
value.

````ruby
@scenario.increase_slider "coal power plant", "+1"
@scenario.outcome("co2").value should be == 167.05 #Mton
````

We can define that the outcome of the scenario, but perhaps more usefull 
is that we can specify that an outcode of the model (e.g. "Co2") 
**increases** with a certain value.

````ruby
@scenario.increase_slider "coal power plant", "+1"
@scenario.outcome("co2").increase.should be == 1.05 #Mton
````

When we do not care about the exact number, but we want the outcome to
increase by **at least** a certain value, we write:

````ruby
@scenario.outcome("co2").increase.should be > 0.03 #percent
````

Of course, sometimes we want a number **not** to change when we pull a
slider:

````ruby
@scenario.outcome("footprint").increase.should be == 0
````

If we are not sure (or do not care) about the specific change we can
draw up boundaries, like this:

````ruby
@scenario.outcome("import").increase.should be > 0.03 #percent
@scenario.outcome("import").increase.should be < 0.05 #percent
````
Which can also be put on one line:

````ruby
@scenario.increase("import").should be_within(0.01).of(0.04)
````

We can run these specs against all countries, specific countries and end_years.

### How to run the tests

* Run all the specs using: `rspec spec/.`
