# Phase-3-Active-Record-Code-Challenge

This repository contains the code challenge for Phase 3 of the Active Record curriculum.

**Project by: Mark Paul**

## Running the Code

To run the code challenge, follow the instructions below:

1. Build out all the methods listed in the deliverables section. You can start with the ones you find easiest, but keep in mind that some methods rely on others.
2. Test your code in the console using the provided tool. Run `rake console` from the command line to start a pry session with your classes defined. You can test your methods and associations here. Feel free to use the `seeds.rb` file to create sample data for testing.
3. Create a migration for the `reviews` table. The `Review` model should belong to both `Product` and `User`. Ensure that the migration includes the necessary columns to establish these relationships, such as `star_rating` (integer) and `comment` (string).
4. Once the migration is set up and run, create instances of the `Review` class using the `seeds.rb` file. This will allow you to test your code with realistic data.
5. Implement the object association methods using Active Record association macros and query methods (`has_many`, `has_many through`, and `belongs_to`) where appropriate. These methods should provide access to related objects and collections.
6. Implement the aggregate and association methods listed in the deliverables section. These methods perform calculations and manipulations on the data, such as printing reviews or calculating average ratings.

Remember to prioritize writing error-free code over completing all deliverables. Test your code in the console as you go along, and ensure that each method works correctly. Messy code that works is better than clean code that doesn't, but if time allows, consider refactoring your code to adhere to best practices.

## Deliverables

In this code challenge, you need to create the following classes and implement their respective methods:

### Migrations

- Create a migration for the `reviews` table that includes the necessary columns to establish the relationships with `Product` and `User`. These columns should include `star_rating` (integer) and `comment` (string).

### Object Association Methods

Use Active Record association macros and query methods to implement the following methods:

#### Review

- `Review#user`: Returns the `User` instance associated with this `Review`.
- `Review#product`: Returns the `Product` instance associated with this `Review`.

#### Product

- `Product#reviews`: Returns a collection of all the `Review` instances for this `Product`.
- `Product#users`: Returns a collection of all the `User` instances who reviewed this `Product`.

#### User

- `User#reviews`: Returns a collection of all the `Review` instances given by this `User`.
- `User#products`: Returns a collection of all the `Product` instances reviewed by this `User`.

### Aggregate and Association Methods

Implement the following methods:

#### Review

- `Review#print_review`: Puts a formatted string in the terminal representing this `Review` in the following format: "Review for {product name} by {user name}: {review star_rating}. {review comment}"

#### Product

- `Product#leave_review(user, star_rating, comment)`: Creates a new `Review` in the database associated with this `Product` and the given `User`. Takes `user` (an instance of the `User` class), `star_rating` (integer), and `comment` (string) as arguments.
- `Product#print_all_reviews`: Puts a string in the terminal representing each `Review` for this `Product`. Each review should be formatted as follows: "

Review for {product name} by {user name}: {review star_rating}. {review comment}"
