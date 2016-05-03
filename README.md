[![Build Status](https://travis-ci.org/Willibaur/airport-Ruby.svg?branch=master)](https://travis-ci.org/Willibaur/airport-Ruby)

[![Coverage Status](https://coveralls.io/repos/github/Willibaur/airport-Ruby/badge.svg?branch=master)](https://coveralls.io/github/Willibaur/airport-Ruby?branch=master)
=================

Airport Emulator JavaScript
=================

Task
-----

This is a solution for controlling the flow of planes at an airport. The planes can land and take off if the weather is sunny.

Occasionally it may be stormy weather, in which case no planes can land or take off.  

Here are the user stories used.

```
As an air traffic controller
So I can get passengers to a destination
I want to instruct a plane to land at an airport and confirm that it has landed

As an air traffic controller
So I can get passengers on the way to their destination
I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

As an air traffic controller
To ensure safety
I want to prevent takeoff when weather is stormy

As an air traffic controller
To ensure safety
I want to prevent landing when weather is stormy

As an air traffic controller
To ensure safety
I want to prevent landing when the airport is full

As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate
```

Technologies used
-----------------

* Continuois integration
  * Travis CI
  * Coveralls

* Testing
  * RsPec

* Back end framework
  * Ruby


Functionalities requested
-------------------------

- Instruct or prevent to land and take off
- Create required capacity
- Flow control of planes at airport.
- Change plane status

Setting up testing environment
------------------------------

In order to play around with this app you need to clone the repo shown below and
execute the following commands to be functional.

```sh
$ git clone git@github.com:Willibaur/airport-Ruby.git
$ cd airport-Ruby
$ bundle install
```

If you want to run all tests written previously, you need to execute:

```sh
rspec
```

This will return a list with all feature and unit tests implemented.



Contributors
------------

* [William Bautista](https://github.com/Willibaur)
