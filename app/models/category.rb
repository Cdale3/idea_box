class Category < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :ideas
end



# I need to add a commment
