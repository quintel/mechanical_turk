# Mechanical Turk

Inspiration of the Mechanical Turk is drawn from [The Turk](http://en.wikipedia.org/wiki/The_Turk).

## The Idea

In stead of pulling a slider as a person, we can let Rspec do that. We define
what we expect from ETengine. E.g., when we expect a clean sheet scenario to 
have *exactly* 160 MegaTons of CO<sub>2</sub>-emissions, we can write:

````ruby
@scenario.new
@scenario.outcome("co2").value should be == 160.00 #Mton
````

Then we run the test (either from the command line using `$> rspec specs/.` or hitting `CMD+R` in TextMate)... 
and hopefully we get a green light!

![it's green!](http://f.cl.ly/items/27252h3o191P2o142y0o/Screen%20Shot%202012-03-07%20at%209.17.00%20AM.png)

Or when ETEngine returns something else then expected, we get a red value and
some explanation:

![oh no, it's red!](http://f.cl.ly/items/0y4307374716291x3f3v/Screen%20Shot%202012-03-07%20at%209.27.49%20AM.png)

## What kind of expectations can we have?

### Sliders

We can set a slider and change the expectation accordingly:

````ruby
@scenario.set_slider "coal power plant", 3
@scenario.outcome("co2").value should be == 167.05 #Mton
````

We can also increase a slider with a certain value above its starting
value.

````ruby
@scenario.increase_slider "coal power plant", 1
````

We can also set a combination of sliders, e.g. that are in a group, 
or when we went to test a *special* combination that produces an
error prone situation:

````ruby
@scenario.set_slider "micro chp", 60 #percent
@scenario.set_slider "district heating", 40 #percent
@scenario.set_slider "coal power plant", 10 #number of typical plants
````

### Results

We can define that the outcome of the scenario:

````ruby
@scenario.set_slider "coal power plant", 3
@scenario.outcome("co2").value should be == 167.05 #Mton
````

But perhaps more usefullis that we can specify that an outcode of the 
model (e.g. "Co2")**increases** with a certain value.

````ruby
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
We can run these specs for specific countries, end_years, and other options that
are supported in the model

````ruby
@scenario.new
  country: "ro"
  end_year: 2044
  use_fce: true
  merit_order: true
````

### Limitations

The Mechanical Turk tests the outcome (i.e. the numbers) of ETEngine. Of course, the different
interfaces (*etflex*, *etmodel* and *energymixer*) can still break!

### How to run the tests

* Run all the specs using: `rspec spec/.`
