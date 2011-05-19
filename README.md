HABJECT
=======

Habject gives you object flavor syntax on ruby Hash.


Installation
------------

Install it with rubygems:

    gem install habject

With bundler, add it to your `Gemfile`:

    gem "habject", "~>0.1"


Usage
-----

Let's say we have this hash :

    user = {'name' => 'chatgris'}

Habject gives you the possibility to call 'name' on 'user' :

    user.name
    # => "chatgris"

And also respond_to on user

    user.respond_to? :name
    # => true


Copyright
---------

See LICENSE for further details.
