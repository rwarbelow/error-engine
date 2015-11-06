require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  test "topic has many flash cards" do
    topic = Topic.new(name: "views")

    assert_equal [], topic.flash_cards
  end
end
