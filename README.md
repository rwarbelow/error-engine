# Error Engine

Error Engine is an app that should allow users to create flashcards that fall under a specific topic. For example:

```ruby
topic = Topic.create(name: "models")
topic.cards.create(question: "How do you fix this error? NoMethodError: undefined method `pets' for #<Store:0x00000108b755f8>\n
                   test/models/store_test.rb:7:in `block in <class:StoreTest>'",
                   answer:   "Set up `has_many :pets` relationship inside of the Store class.")
```

To begin, run `rake test` to see three failing tests: an integration tests and two model tests. Use TDD to fix errors one by one. 

While working, use [Error Engine Notes](https://www.dropbox.com/s/pqjyfnrlkrf4hn2/error_engine_notes.pages?dl=0) to keep track of the errors and how to fix them.