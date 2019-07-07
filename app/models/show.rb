class Show < ActiveRecord::Base


    # self because it's refering to the instance of a class or in this case the instance of a table. 
    def self.highest_rating
    
    self.maximum(:rating)

    end

    #using the where clause to where the rating = ? 
    def self.most_popular_show
    
        self.where("rating = ?", self.highest_rating).first
    
    end


    def self.lowest_rating
        self.minimum(:rating)
    end

    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating).first
    end

# the sum of all ratings for each individual movie
    def self.ratings_sum
        self.sum(:rating)
    end

    #return an array of all the shows above 5
    def self.popular_shows

        self.where("rating >= ?", 5) # mmm interesting.

    end

    #shows by alphabetical order

    def self.shows_by_alphabetical_order

        self.order(:name)

    end










end