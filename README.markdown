# Mechanical Turk

Inspiration drawn from [The Turk](http://en.wikipedia.org/wiki/The_Turk).

## Vision

In stead of pulling a slider as a person, we can let Rspec do that. We define
what we expect, e.g.: 

````ruby
@scenario.new area:"nl", end_year:2040
@scenario.outcome("co2").should be == 160.00 #Mton
````

You can define that the outcome of the scenario , but 
perhaps more usefull is that you can specify that an outcode of the model 
(e.g. "Co2") **increases** with a certain value.

````ruby
@scenario.increase_slider "coal power plant", 1
@scenario.increase_in("co2").should be == 1.05 #Mton
````

When we do not care about the exact number, but we want the outcome to
increase by **at least** a certain value, we write:

````ruby
@scenario.increase("co2").should be > 0.03 #percent
````

Furthermore, you can specify that an outcome increases/decreases with at 
**least** or **maximal** a certain number.

````ruby
@scenario.increase("import").should be > 0.03 #percent
@scenario.increase("import").should be < 0.04 #percent
````

Of course we can run these specs against all countries and end_years.

### How to run the tests

* Run all the specs using: `rspec spec/.`
