require "rails_helper"

RSpec.describe Idea, type: :model do
  describe "associations" do
    it{ is_expected.to have_many(:comments) } 
    it{ is_expected.to validate_presence_of :name }
    it{ is_expected.to belong_to(:user) }

  end
end