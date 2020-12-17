class Post < ApplicationRecord
  # with_options presence: true do
    validates :name, presence: {message:"が未入力です"}
    validates :age, presence: {message:"が未入力です"}
    validates :gender, presence: {message:"が未入力です"}
    validates :property, presence: {message:"が未入力です"}
    validates :request, presence: {message:"が未入力です"}
  # end
end
