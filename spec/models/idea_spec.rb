require "rails_helper"

RSpec.describe Idea, type: :model do
  # Your other tests here...

  it "has comments" do
    idea = Idea.create!(name: "My Awesome Idea Name")
    comment = Comment.create!(
      user_name: "My name",
      body: "",
      idea: idea # Link the comment to the idea
    )

    expect(comment.idea).to eq(idea)
  end
end