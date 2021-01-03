class ReviewsController < ApplicationController

    def index
        render json: Review.all.map{|review| ReviewSerializer.new(review)}
    end 
    
    def create
        #byebug
        review = Review.new(review_params) 

        if review.save
            render json: ReviewSerializer.new(review)
        end 
    end 

    def destroy
        review = Review.find(params[:id])
        review.destroy
    end 

    private

    def review_params
        params.require(:review).permit(:content )
    end 
end
