class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def print_all_reviews
    reviews.each do |review|
      puts "Review for #{name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
    end
  end

  def average_rating
    total_ratings = reviews.sum(:star_rating)
    total_reviews = reviews.count
    total_ratings.to_f / total_reviews if total_reviews.positive?
  end

  def leave_review(user, star_rating, comment)
    reviews.create(user: user, star_rating: star_rating, comment: comment)
  end
end
