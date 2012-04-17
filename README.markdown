# Mechanical Turk

Inspiration of the Mechanical Turk is drawn from [The Turk](http://en.wikipedia.org/wiki/The_Turk).

## The Idea

In stead of pulling a input as a person to test the **correctness** of the ETM, we can let Rspec do that. We define
what we expect from ETengine. E.g., when we expect a clean sheet scenario to 
have *exactly* 160 MegaTons of CO<sub>2</sub>-emissions, we can write:

````ruby
@scenario.new
@scenario.co2.value should be == 163_516_595_413.92465 #kg
````

Then we run the test (either from the command line using `$> rspec specs/.` or hitting `CMD+R` in TextMate)... 
and hopefully we get the soothing green light that everything is *as expected*:

![it's green!](http://f.cl.ly/items/27252h3o191P2o142y0o/Screen%20Shot%202012-03-07%20at%209.17.00%20AM.png)

Or when ETEngine returns something else then expected, we get a **warning** and
some explanation:

![oh no, it's red!](http://f.cl.ly/items/0y4307374716291x3f3v/Screen%20Shot%202012-03-07%20at%209.27.49%20AM.png)

## Input and output

ETengine is an input-output system. With the Turk you can 'set' inputs
to certain positions, and expect the outcome to
*not* change, the change in a *direction* (up or down), or to increase with *at least*
5%, or to change somewhere *between* 4% and 6%.

### Input: setting the 'sliders' of the model

We can set a input and change the expectation accordingly:

````ruby
@scenario.set_input "coal power plant", 3
````

We can also set a combination of inputs, e.g. that are in a group, 
or when we went to test a *special* combination that produces an
error prone situation:

````ruby
@scenario.set_input "micro chp", 60 #percent
@scenario.set_input "district heating", 40 #percent
@scenario.set_input "coal power plant", 10 #number of typical plants
````

Please note that the inputs are represented by sliders on 
[etmodel](http://et-model.com), but as *answers* on the 
[mixer](http://mixer.et-model.com)

### And then we can expect ETEngine to return specific numbers

We can define that the outcome of the scenario is an exact number:

````ruby
@scenario.set_input "coal power plant", 3
@scenario.co2.value should be == 163_516_595_413.0 #kg
````

But perhaps more useful is that we can specify that an outcode of the 
model (e.g. "Co2") **increases** with a certain value.

````ruby
@scenario.co2.increase.should be == 1_000_000 #kg
````

When we do not care about the exact number, but we want the outcome to
increase by **at least** a certain value, we write:

````ruby
@scenario.co2.increase.should be > 1 #Mton
````

This can be very handy to test the **direction** of an outcome. E.g. we might 
want to specifiy that the outcome of a query should be **positive** or
**negative**:

````ruby
@scenario.co2.increase.should be > 0
@scenario.co2.increase.should be < 0
````

This can also be written shorter as:

````ruby
@scenario.co2.should increase
@scenario.co2.should decrease
````

Of course, sometimes we want a number **not** to change when we pull a
input:

````ruby
@scenario.footprint.increase.should be == 0
````

or, shorter variant:

````ruby
@scenario.footprint.should not_change
````

If we are not sure (or do not care) about the specific change we can
draw up boundaries, like this:

````ruby
@scenario.import.increase.should be > 0.03 #percent
@scenario.import.increase.should be < 0.05 #percent
````
Which can also be put on one line:

````ruby
@scenario.import.should be_within(0.01).of(0.04)
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

### More on Rspec

Please check out the [RSpec documentation](https://www.relishapp.com/rspec) 
on the possibilities and best practices of using RSpec.

### Folder structure and file naming

All the tests belong in the directory `/spec`. Put tests that belong together into
properly named subdirectories. Please be sure that you give your test file a
easily understandable name. It has to end with `_spec.rb`. 

### Template for test

Please check out a few of the current tests in the 
[spec directory](https://github.com/dennisschoenmakers/mechanical_turk/tree/master/spec)
for some example tests.

Your test at least has to contain the following:

````ruby

require 'spec_helper'

describe "Your issue/challenge" do

  it "should do something that I expect" do
    scenario = Scenario.new(country: 'nl', end_year: 2050)
    scenario.set_slider
  end

end
````

### Test different ETEngines

The Mechanical Turk by default tests the 
[Beta ETEngine server](http://beta.et-engine.com), but you can test other servers by
adding a config.yml file with your settings:

````
$> cp config.yml.sample config.yml
$> echo "server_addr: "http://etengine.dev" > config.yml
$> rspec spec
````

or, by passing an Environment Variable to rspec:

````
$> API=http://etengine.dev rspec spec
````

### Limitations

The Mechanical Turk tests the outcome (i.e. the numbers) of ETEngine. Of course, the different
interfaces (*etflex*, *etmodel* and *energymixer*) can still break!

### How to run the tests

* Run all the specs using: `rspec spec` from the root directory of this repository
on your local box
* Run the specs on TextMate using a Rspec plugin, e.g. the one from 
  [David Chelimsky](https://github.com/dchelimsky/rspec-tmbundle)
* Run the specs from Vim using a plugin