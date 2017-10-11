class Show < ActiveRecord::Base

  def self.highest_rating
    maximum(:rating)
  end

  def self.most_popular_show
    where("self.highest_rating", :name)
  end

  def self.lowest_rating
    minimum(:rating)
  end

  def self.least_popular_show

  end

  def self.ratings_sum
    sum(:rating)
  end

  def self.popular_shows
    where("rating > 5", 5)
  end

  def self.shows_by_alphabetical_order
    order(created_at: :desc)
  end

end
