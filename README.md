# Active Record Associations Review Lab

## Learning Goals

- Create one-to-many and many-to-many associations
- Use `has_many`, `belongs_to` and `has_many :through` Active Record macros

## Instructions

Flatiron School has started its own taxi service, FlatironX, and we need to
start developing the application's domain model!

Three basic models have already been created, `Passenger`, `Ride`, and `Taxi`.

Your job is set up a `has_many :through` relationship between these three
models so that we can keep track of who's driving who around. It will work like
this:

`Taxi -< Rides >- Passengers`

This way, a **taxi** can have many **passengers**, and a **passenger** can have
many **taxis**!

## Deliverables

### Updating the Database with Migrations

Each table only has a primary key, so you'll need to add the **foreign keys** to
the appropriate model so that Active Record can handle the "has_many :through"
relationship.

You can either edit the migration files directly and add the foreign keys, or
generate a new migration with `rails g migration` to add columns to the
appropriate table.

Once your migrations are done, run `rails db:migrate` to run the migrations.

### Adding Active Record Macros

After completing the migrations, you'll also need to update the `Taxi`,
`Passenger`, and `Ride` models with the appropriate Active Record macros.

The tests expect to be able to call certain instance methods on each of these
models, such as `passenger.taxis`, so make sure to add the appropriate
`has_many` and `belongs_to` macros to your models.

Check out the join table section in the
[Active Record Association Rails Guide][has-many-through] if you need a
refresher on these.

## Resources

- [Active Record Associations](http://guides.rubyonrails.org/association_basics.html)
- [Active Record Associations: Join Table section][has-many-through]

[has-many-through]: http://guides.rubyonrails.org/association_basics.html#the-has-many-through-association
