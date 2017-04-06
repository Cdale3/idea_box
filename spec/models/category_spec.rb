require "rails_helper"

describe Category do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without a name" do
        category = Category.new
        expect(category).to be_invalid
      end
      it "is has a unique name" do
      category_1 = Category.create(name: "Random thoughts")

      category_2 = Category.new(name: "Random thoughts")
      expect(category_2).to be_invalid
      end
    end
    context "valid attributes" do
      it "is valid with a name" do
        category = Category.create(name: "Random thoughts")
        expect(category).to be_valid
      end
    end

    describe "relationship" do
      it "has many ideas" do
        category = Category.create(name: "Random thoughts")
        expect(category).to respond_to(:ideas)
      end
    end
  end
end
