require 'test_helper'

class FlashCardTest < ActiveSupport::TestCase
  test "flash card belongs to a topic" do
    card = FlashCard.new(question: "How do you fix this error? NoMethodError: undefined method `pets' for #<Store:0x00000108b755f8>\n
                                    test/models/store_test.rb:7:in `block in <class:StoreTest>'",
                          answer:   "Set up `has_many :pets` relationship inside of the Store class.",
                          topic_id: 1)

    assert card.respond_to?(:topic)
  end
end
