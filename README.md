## Goals

We've gotten fairly familiar with ActiveRecord's most common methods. Let's make sure we don't get rusty with those other less-frequently used methods.

The first few portions of this obstacle course are meant to test your knowledge around processing things in Ruby to put more of that work on the database (PostgreSQL) to make our own code easier to maintain. Your job will be to remove the code that processes data in Ruby, and replace that code with proper ActiveRecord commands to do the exact same work.

**There will be more than one way to solve some of these problems.** If you want feedback on your approach, please tag your instructors on GitHub for a code review.

The remaining portions of the obstacle course will increase in difficulty and will teach you how to turn raw SQL into proper ActiveRecord commands.


## Instructions

1. Fork [the repo](https://github.com/turingschool-projects/activerecord-obstacle-course) to your own GitHub account, then clone down your fork.

2. Do the usual setup for a Rails app:

```bash
bundle install
bundle update
rake db:{drop,create,migrate,seed}   # seeding will take a few moments
rspec
# you should see several passing tests, and a few skipped tests
```

```
remove Gemfile.lock
update Ruby version in Gemfile to 2.7.2
bundle
bundle update
rails db:{drop,create,migrate,seed} (for dev database)
rails db:migrate RAILS_ENV=test (for test database)
rspec
```
If you run into bundle issues then delete the `Gemfile.lock` and then run `bundle install`

You may also find that the `rails db:migrate` command does not migrate the test database. If so, you can do this with:

```
rails db:migrate RAILS_ENV=test
```

3. **You must not change the setup or expectations of any test.**

4. Start with the top test within `spec/models` and work in order.

5. To run your tests, you can run `rspec spec/models`

6. If you want to run one specific test, you can run `rspec spec/models/<spec_file>.rb:<LINE_NUMBER>`.

    * For example: `rspec spec/models/aroc_week_1_spec.rb:34`

7. Most of the tests follow the same format...

    * Comment out the original ruby code -- don't erase it completely.

      ```ruby

      # -----------------------------
      # A section with some Ruby code
      # -----------------------------

      ```

    * Write a refactored implementation using ActiveRecord. Assign to the same variables as above.

      ```ruby
      # -----------------------------
      # A section for you to write refactor the Ruby or raw SQL code
      # -----------------------------
      ```

    * Leave the expectations alone. They will determine whether you have a working solution.

      ```ruby
      # -----------------------------
      # The expectation
      # -----------------------------
      ```


## Extensions

If you finish everything in here, you're welcome to take on the following extensions:

* Break your solutions into scopes and/or class methods.
* Try to implement one example using ActiveRecord's `merge`.
