#Notes about Testing

# factory_girl_rails
Documentation: https://github.com/thoughtbot/factory_girl_rails

+ factory_girl is a fixtures replacement with a straightforward definition syntax
+ support for multiple build strategies (saved instances, unsaved instances, attribute hashes, and stubbed objects)
+ support for multiple factories for the same class (user, admin_user, and so on), including factory inheritance.

Currently using: Rails 4.2.6

https://www.hiringthing.com/2012/08/17/rails-testing-factory-girl.html
Good explanation of why its helpful.

https://thoughtbot.com/upcase/videos/factory-girl
better than fixtures.

How Factory Girl helps avoid mystery guests

Let's look at a specific example. Fixtures often lead to Mystery Guests, an antipattern where we are performing some assertions in our tests but it's not at all obvious at a glance what the data we're asserting against is:
