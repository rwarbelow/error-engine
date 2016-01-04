require 'test_helper'

class CreateFlashCardTest < ActionDispatch::IntegrationTest
  test "a flash card can be created for a given topic" do
    topic = Topic.create(name: "models")

    visit topic_path(topic)

    click_link "Add new flash card"

    card_data = {
      question: "How do you fix this error? NoMethodError: undefined method `pets' for #<Store:0x00000108b755f8>\n
                 test/models/store_test.rb:7:in `block in <class:StoreTest>'",
      answer:   "Set up `has_many :pets` relationship inside of the Store class."
    }

    fill_in "Question", with: card_data[:question]
    fill_in "Answer", with: card_data[:answer]
    click_button "Create Flash Card"

    assert_equal topic_path(topic), current_path

    within("#cards") do
      assert page.has_content?(card_data[:question])
    end
  end
end
