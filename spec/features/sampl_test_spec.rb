require "rails_helper"

xdescribe "restaurant reviews" do
  scenario "seen on restaurant show page" do
    restaurant = restaurant.create(name: "X")
      review_1 = restaurant.reviews.create(name: "Andrew",
                                          review: "It was fine",
                                          rating: 5)
      review_2 = restaurant.reviews.create(name: "Beth",
                                          review: "Had Better",
                                          rating: 3)
visit restaurant_path(restaurant)

within("div.reviews div:nth-child(1)") do
#all div classes named reviews
  expect(page).to have_content("Name: Andrew")
  expect(page).to have_content("Review: It was fine")
  expect(page).to have_content("Rating: 5")
    end

within("div.reviews div:nth-child(2)") do
  expect(page).to have_content("Name: Beth")
  expect(page).to have_content("Review: Had Better")
  expect(page).to have_content("Rating: 3")
    end
  end
end
